import 'package:flutter/material.dart';
import 'package:raamnaam/Utils/colors.dart';
import 'package:raamnaam/splash_screen.dart';

import 'View/Category/CaterCategory.dart';
import 'View/Category/PurohitCategory.dart';
import 'View/Category/TentHouseCategory.dart';
import 'View/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: CustomColors.primaryColor
        ),
        home:splashScreen()     //homeScreen()
    );
  }
}



