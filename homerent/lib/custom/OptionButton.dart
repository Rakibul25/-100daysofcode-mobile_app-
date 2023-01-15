import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton(
      {
      required this.text,
      required this.icon,
      required this.width})
      ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            fixedSize: Size.fromWidth(100),
            padding: EdgeInsets.all(10),
          ),
          child: Text("Press Here"),
          onPressed: () {
            //Code Here
          },
      )
    );
  }
}
