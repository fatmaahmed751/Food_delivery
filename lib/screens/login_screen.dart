import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';
import 'package:restaurant_app/screens/layout_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState>formKey = GlobalKey();

   FirebaseAuth auth = FirebaseAuth.instance;
   String? email;
   String? password;

   @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
 return Scaffold(
      body:Form(
        key:formKey ,
        child: ListView(
       // crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: screenText(
                text:"Login",
                fontSize: 30,
                fontWeight:FontWeight.w400,
                  color: const Color(0xff4a4b4d)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            screenSubText(
              text: "add your details to login ",
              fontSize: 14,
              fontWeight: FontWeight.w500,
                color:Colors.black54
            ),
            defaultFormField(
                type:TextInputType.text,
                controller:emailController,
                hintText: 'Your email',
              onChanged: (data){
                  email = data;
              }

            ),
            defaultFormField(
                type:TextInputType.text,
                controller:passwordController,
                hintText: 'Password',
                onChanged: (data){
                  password = data;
                }
            ),
            const SizedBox(height: 10,),
            Center(
              child: orangeButton(
                  text: 'Login',
                function:(){
                    auth.signInWithEmailAndPassword(email: email!, password: password!);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const LayoutScreen()));
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            screenSubText(
                text: "Forgot your password",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:Colors.black54
            ),
            const SizedBox(
              height:20,
            ),
            screenSubText(
                text: "Or Login With",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:Colors.black54
                ),

            const SizedBox(
              height:25,
            ),
            defaultButton(
                text: 'f      login with Facebook',
                color:Colors.blue[800]!,

             function:(){},
                textColor:Colors.white),
            const SizedBox(
              height:20,
            ),
            defaultButton(
                text: 'G+      login with Google',
                color:Colors.redAccent,

                function:(){},
                textColor:Colors.white),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                screenSubText(
                    text: "Don\'t have an account?",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(124, 125, 126,101),
                ),
                funText(
                    text: "Sign up",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  function: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> const SignUpScreen()));
                  }
                ),


              ],
            ),
            const SizedBox(height: 30,),
           // defaultDivider(),
          ],

 ),
      ),


    );
  }
}
