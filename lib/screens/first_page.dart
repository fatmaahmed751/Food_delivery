import 'package:flutter/material.dart';
import 'package:restaurant_app/components/components.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      //backgroundColor: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            defaultContainer(),
            const SizedBox(height: 20,),
            mainText(),
            secondText(),
            const SizedBox(height: 3,),
            Center(
              child: orangeButton(
                text: 'Login',
                function:(){
                //  Navigator.pushReplacementNamed(context, AppRouts.loginScreen);
                 // Navigator.pushReplacementNamed(context,AppRouts.loginScreen);
                },
              ),
            ),
            Center(
              child: defaultButton(
                text: 'Create An account',
                textColor: Colors.deepOrangeAccent,
                color: Colors.transparent,
                function: (){
                 // Navigator.push(context, MaterialPageRoute(builder:(context)=>const SignUpScreen()));
                }
            ),
            ),
            defaultDivider(),
          ],
        ),
      ),
    );
  }
}
