import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
 return Scaffold(
      body:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          screenText(
            text:"Login",
            fontSize: 30,
            fontWeight:FontWeight.w400,
              color: Color(0xff4a4b4d)
          ),
          SizedBox(
            height: 5,
          ),
          screenSubText(
            text: "add your details to login ",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(124, 125, 126,101)
          ),
          defaultFormField(
              type:TextInputType.text,
              controller:emailController,
              hitText: 'Your email'),
          defaultFormField(
              type:TextInputType.text,
              controller:emailController,
              hitText: 'Password'
          ),
          SizedBox(height: 10,),
          Center(
            child: orangeButton(
                text: 'Login',
              function:(){},
            ),
          ),
          SizedBox(
            height: 5,
          ),
          screenSubText(
              text: "Forgot your password",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(124, 125, 126,101)
          ),
          SizedBox(
            height:20,
          ),
          screenSubText(
              text: "Or Login With",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(124, 125, 126,101
              ),
          ),
          SizedBox(
            height:20,
          ),
          defaultButton(
              text: 'f      login with Facebook',
              color:Color.fromRGBO(54, 127, 192,100),

           function:(){},
              textColor:Colors.white),
          SizedBox(
            height:20,
          ),
          defaultButton(
              text: 'G+      login with Google',
              color:Colors.redAccent,

              function:(){},
              textColor:Colors.white),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              screenSubText(
                  text: "Don\'t have an account?",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(124, 125, 126,101),
              ),
              funText(
                  text: "Sign up",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                function: (){
                    //Navigator.push(context,MaterialPageRoute(builder:(context)=>const SignUpScreen()));
                }
              ),


            ],
          ),
          SizedBox(height: 30,),
          defaultDivider(),
        ],

 ),


    );
  }
}
