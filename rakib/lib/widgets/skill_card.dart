import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final double width;
  final double ratio;

  const SkillCard(
      {required this.title, required this.width, required this.ratio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CustomColors.brightBackground,
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: SizedBox(
        width: width * ratio,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.getFont('Delius',
                          color: CustomColors.gray, fontSize: 12)),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
