import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                SizedBox(height: 5,),
                screenSubText(
                    text: "add your details to Sign Up ",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(124, 125, 126,101)
                ),

                defaultFormField(
                    type:TextInputType.text,
                    controller:nameController,
                    hitText: 'Name'),

            defaultFormField(
                type:TextInputType.text,
                controller:emailController,
                hitText: 'Email'),

                defaultFormField(
                    type:TextInputType.text,
                    controller:phoneController,
                    hitText: 'Mobile No'),

                defaultFormField(
                    type:TextInputType.text,
                    controller:addressController,
                    hitText: 'Address'),

                defaultFormField(
                    type:TextInputType.text,
                    controller:passwordController,
                    hitText: 'Password'),

                defaultFormField(
                    type:TextInputType.text,
                    controller:confirmPasswordController,
                    hitText: 'Confirm Password'),

                Center(
                  child: orangeButton(
                      text: 'Sign Up', function:(){},

                  ),
                ),
                SizedBox(
                  height: 5,
                ),
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
                        text: "Login",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        function: (){
                          //Navigator.pop(context,MaterialPageRoute(builder:(context)=>const LoginScreen()));
                        },
                    ),


                  ],
                ),
                SizedBox(height: 30,),
                defaultDivider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
