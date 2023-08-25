import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/controllers/login_bloc/login_state.dart';
import 'package:restaurant_app/models/user_login_model.dart';

class AppLoginCubit extends Cubit<LoginStates>{
  AppLoginCubit() :super(AppLoginInitialState());

  static AppLoginCubit get(context)=>BlocProvider.of(context);


 // UserLoginModel model = UserLoginModel(
 //   email:'' ,
 //   password: '',
 // );
  FirebaseAuth auth = FirebaseAuth.instance;


Future<UserLoginModel> firebaseAuthenticate(UserLoginModel model
)async{
  try {
 final response=  await auth.signInWithEmailAndPassword(
          email: model.email,
          password: model.password
        //print('jjjjjjjjjjjj');
      );
      print(auth.currentUser!.email);
      print(auth.currentUser!.uid);
        print('jjjjjjjjjjjj');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print('kkkkkkkkkkkkkkkkkkk');
    print(e);
  }
  return model;
}







}