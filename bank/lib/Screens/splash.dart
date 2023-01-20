import 'dart:async';

import 'package:bank/Screens/login.dart';
import 'package:bank/constants/color_constant.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const logIn()));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kWhiteColor,
        child: const Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 30, color: kGreenColor),
          ),
        ),
      ),
    );
  }
}
