import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../utils/custom_colors.dart';

class Description extends StatelessWidget {
  final bool isVertical;
  final double width;

  const Description({required this.isVertical, required this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isVertical ? double.infinity : width * 0.29,
      child: Column(
        crossAxisAlignment:
            isVertical ? CrossAxisAlignment.center : CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: isVertical ? double.infinity : width * 0.29,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Developing",textAlign: isVertical ? TextAlign.center : TextAlign.center, style: GoogleFonts.getFont('Delius',color: CustomColors.gray,fontSize: 22)),
                AnimatedTextKit(
                  repeatForever: true,
                  pause: const Duration(seconds: 2),
                  animatedTexts: [
                    TyperAnimatedText(
                        " mobile applications",
                        textAlign: isVertical ? TextAlign.center : TextAlign.center,
                        textStyle: GoogleFonts.getFont('Delius',
                            color: CustomColors.gray, fontSize: 22)),
                    TyperAnimatedText(
                        " web applications",
                        textAlign: isVertical ? TextAlign.center : TextAlign.center,
                        textStyle: GoogleFonts.getFont('Delius',
                            color: CustomColors.gray, fontSize: 22)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: InkWell(
              onTap: () async => !await launch(
                  'https://mail.google.com/mail/u/0/?fs=1&to=mdrakib.mri93@gmail.com&tf=cm'),
              child: Card(
                color: CustomColors.primary,
                elevation: 20,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  width: 130,
                  height: 40,
                  child: Center(
                    child: Text("Hire Me",
                        style: GoogleFonts.getFont('Delius',
                            decoration: TextDecoration.underline,
                            color: CustomColors.darkBackground,
                            fontSize: 20)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
