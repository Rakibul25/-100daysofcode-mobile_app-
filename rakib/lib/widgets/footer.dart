import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'logo.dart';


class Footer extends StatelessWidget {
  final double width;
  final ScrollController scrollController;
  const Footer({required this.width,required this.scrollController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.darkBackground,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Made with ❤ ©Rakibul Islam',
                style: GoogleFonts.getFont('Delius',
                    color: CustomColors.gray,
                    fontSize: 14)),
          ],
        ),
              );
  }
}
