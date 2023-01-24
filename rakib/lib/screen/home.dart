import 'package:flutter/material.dart';
import 'package:rakib/screen/pc_screen/home_mobile.dart';
import 'package:rakib/screen/pc_screen/home_pc.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: width<=800? HomeMobile() : HomePc()
    );
  }
}
