import 'package:flutter/material.dart';
import 'package:rakib/screen/portfolio.dart';
import 'package:rakib/utils/custom_colors.dart';


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
      title: 'Rakibul Islam',
      theme: ThemeData(
        primaryColor:
        CustomColors.primary,
        splashColor: CustomColors.primary,
        highlightColor:CustomColors.primary,

      ),
      home: const Portfolio(),
    );
  }
}

