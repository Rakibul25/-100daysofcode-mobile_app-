import 'package:flutter/material.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';

class NavBarButton extends StatelessWidget {
  final Function onPressed;
  final double width;

  const NavBarButton({required this.width, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: const Icon(Icons.menu, color: Colors.white),
      style: ElevatedButton.styleFrom(
        elevation: 4.0,
        shape: const CircleBorder(),

        primary: CustomColors.darkBackground,
        // <-- Button color
        onPrimary: CustomColors.brightBackground, // <-- Splash color
      ),
    );
  }
}
