
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_app/components/app_colors.dart';
import 'package:restaurant_app/screens/app_rout.dart';
import 'package:restaurant_app/screens/first_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
try {
  print('hhhhhhhhhhhhhh');
   Future.delayed(const Duration(seconds: 2), () {
    Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (_) => FirstPage()));
    print('object');
   });
}catch(e){
 print(e.toString());
}

  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: AppColors.backgroundColor,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    //));
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/images/splash_screen.png'),
            fit: BoxFit.cover,
          ),
        ),

      ),

    );

  }
}
