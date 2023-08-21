import 'package:flutter/material.dart';
import 'package:restaurant_app/data/cubit/cubit.dart';
import 'package:restaurant_app/firebase_options.dart';
import 'package:restaurant_app/screens/app_rout.dart';
import 'package:restaurant_app/screens/first_page.dart';
import 'package:firebase_core/firebase_core.dart' ;
import 'package:restaurant_app/screens/splash_screen.dart';

import 'package:restaurant_app/widgets/menu_categories_section.dart';

import 'screens/home_screen.dart';
import 'screens/layout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: LayoutScreen(),
    // initialRoute: AppRouts.initialRoute,
    debugShowCheckedModeBanner: false,
//routes: routes,
    );

  }
}
