import 'package:flutter/material.dart';
import 'package:homerent/custom/BorderBox.dart';
import 'package:homerent/utils/constants.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BorderBox(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.menu, color: COLOR_BLACK),
                  ),
                  BorderBox(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.settings, color: COLOR_BLACK),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
