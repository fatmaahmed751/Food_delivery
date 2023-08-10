
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';
class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            screenText(
                text:"Reset Password",
                fontSize: 30,
                fontWeight:FontWeight.w400,
                color: Color(0xff4a4b4d)
            ),
            SizedBox(height: 5,),
            Align(
              alignment: Alignment.center,
              child: screenSubText(
                  text: "Please enter your email to receive a link to create anew password via email ",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7c7d7e),


              ),
            ),
            defaultFormField(
                type:TextInputType.text,
                controller:emailController,
                hitText: 'Your email'),
            SizedBox(height: 10,),
            Center(
              child: orangeButton(
                  text: 'Login',
                function:(){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
