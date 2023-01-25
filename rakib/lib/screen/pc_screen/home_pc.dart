import 'package:flutter/material.dart';
import 'package:rakib/constants/color_constants.dart';

class HomePc extends StatelessWidget {
  const HomePc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 1000),
        child: Container(
          color: COLOR_BLACK,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width / 50,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Download CV',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: width / 50,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: width / 50,
                ),
              ],
            ),
          ),
        ),
      ),

      body: Container(
          color: COLOR_BLACK,
          child: Row(
            children: [
              Container(
                width: width*0.55,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi there!", style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],
                  ),
                ),
              ),
              Container(
                width: width*0.45,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text("2nd", style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],
                  ),
                ),
              )
            ],
          )

      ),
    );
  }
}
