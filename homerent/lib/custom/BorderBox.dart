import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final height, width;

  const BorderBox({super.key, required this.padding, required this.height, required this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
