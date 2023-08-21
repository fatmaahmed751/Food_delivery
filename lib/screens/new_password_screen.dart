import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController= TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              screenText(
                fontSize: 27,
                text:"New Password",
                fontWeight:FontWeight.w400,
                  color: Color(0xff4a4b4d)
              ),
              Align(
                alignment: Alignment.center,
                child: screenSubText(
                  text: "Please enter your email to receive a ",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7c7d7e),
                ),
              ),
              Center(
                child: screenSubText(
                  text:"link to create a new password via email",
                  fontSize: 14,
                  fontWeight:FontWeight.w500,
                  color: Color(0xff7c7d7e),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              defaultFormField(
                  type:TextInputType.text,
                  controller:passwordController,
                  hintText: 'New Password'),
              SizedBox(height: 10,),
              defaultFormField(
                  type:TextInputType.text,
                  controller:passwordController,
                  hintText: 'Confirm Password'),
              SizedBox(height: 10,),
              orangeButton(text: 'Next',function:(){}, ),
              defaultDivider(),
            ],
          ),
        ),
      ),

    );
  }
}
