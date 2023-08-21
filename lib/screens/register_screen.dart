import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';
import 'package:restaurant_app/models/user_model.dart';
import 'package:restaurant_app/screens/layout_screen.dart';
import 'package:restaurant_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget {
   const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // UserModel user =
  // UserModel(
  //     email: email,
  //     password: password
  // );
  String? email;
  String? password;

  GlobalKey<FormState>  formKey=GlobalKey();
  FirebaseAuth auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController phoneController=TextEditingController();
    TextEditingController addressController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    TextEditingController confirmPasswordController=TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              // من خلال ال كى اقدر اكسسز البياانات اللي جوه الفورم اقدر اعرف هي سليمه ولا مش سليمه
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  screenText(
                      text:"Sign UP",
                      fontSize: 30,
                      fontWeight:FontWeight.w400,
                      color: Color(0xff4a4b4d)
                  ),
                  SizedBox(height: 10,),
                  screenSubText(
                      text: "add your details to sign up ",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54
                  ),

                  defaultFormField(
                      type:TextInputType.text,
                      controller:nameController,
                      hintText: 'Name',
                    validator: (data){
                        data = nameController.text;
                        if(data.isEmpty){
                          return "value is wrong";
                        }
                        return null;
                    }
                  ),

              defaultFormField(
                  type:TextInputType.text,
                  controller:emailController,
                  hintText: 'Email',
              onChanged: (data){
                email = data;
              }),

                  defaultFormField(
                      type:TextInputType.text,
                      controller:phoneController,
                      hintText: 'Mobile No'),

                  defaultFormField(
                      type:TextInputType.text,
                      controller:addressController,
                      hintText: 'Address'),

                  defaultFormField(
                      type:TextInputType.text,
                      controller:passwordController,
                      hintText: 'Password',
                      onChanged: (data){
                     password =  data ;
                      }),

                  defaultFormField(
                      type:TextInputType.text,
                      controller:confirmPasswordController,
                      hintText: 'Confirm Password',
                      ),

                  Center(
                    child: orangeButton(
                        text: 'Sign Up', function:()async {
                      if (formKey.currentState!.validate()) {
                        await firebaseAuthenticate();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LayoutScreen()));
                      }else{
                        print('not valide');
                      }

                    }
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      screenSubText(
                        text: "Already have an Account?",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54
                      ),
                      funText(
                          text: "Login",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          function: (){
                            Navigator.pop(context,MaterialPageRoute(builder:(context)=> LoginScreen()));
                          },
                      ),


                    ],
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> firebaseAuthenticate() async {
     try {
   await createUserByFirebase();
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
  }

  Future<void> createUserByFirebase() async {
    await auth.createUserWithEmailAndPassword(
        email: email!,
        password: password!
        //print('jjjjjjjjjjjj');
    );
    print(auth.currentUser!.email);
    print(auth.currentUser!.uid);
  }


}
