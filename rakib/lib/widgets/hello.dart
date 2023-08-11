import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/custom_colors.dart';

class HelloWithBio extends StatelessWidget {
  final double width;
  final double ratio;

  const HelloWithBio({required this.width, required this.ratio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: width * ratio),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello!  I’m Rakibul Islam',
              style: GoogleFonts.getFont('Delius',
                  color: Colors.white, fontSize: 26)),
          const SizedBox(height: 5),
          Text(
              "A software developer at Codeware Ltd.\nI love working on challenging projects that push the boundaries of what's possible, "
              "and I'm always striving to learn and grow as a developer.",
              style: GoogleFonts.getFont('Delius',
                  color: CustomColors.gray, fontSize: 16),
            textAlign: TextAlign.left,
          ),
          // InkWell(
          //   onTap: () async => !await launch(
          //       'https://drive.google.com/drive/folders/11CBADlaI-XRwVrPcwRNIt_NYBxaxIRjN?usp=sharing'),
          //   child: Text("download my resume!",
          //       style: GoogleFonts.getFont('Delius',
          //           decoration: TextDecoration.underline,
          //           color: CustomColors.primary,
          //           fontSize: 16)),
          // )
        ],
      ),
    );
  }
}
