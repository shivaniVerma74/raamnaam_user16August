import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raamnaam/Utils/colors.dart';
import 'package:raamnaam/View/AuthView/login.dart';
import 'package:raamnaam/View/homeScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState() {
    // TODO: implement initState
     Timer(Duration(seconds: 3), () {
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
     body: Container(
       color: Colors.white,
       height: MediaQuery.of(context).size.height/1,
       width: MediaQuery.of(context).size.width/1,
       child: Image.asset('assets/logo/splash screen.png'),
     ),
    );
  }
}
