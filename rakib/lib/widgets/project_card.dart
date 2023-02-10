import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final double width;
  final double ratio;

  const ProjectCard(
      {required this.title,
      required this.description,
      required this.link,
      required this.width,
      required this.ratio,
      Key? key})
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
                          color: CustomColors.primary, fontSize: 16)),
                  const SizedBox(height: 10),
                  Text(description,
                      style: GoogleFonts.lato(fontStyle: FontStyle.italic,
                          color: CustomColors.gray, fontSize: 14)),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () async => !await launch(link),
                    child: Text("View in github",
                        style: GoogleFonts.getFont('Delius',
                            decoration: TextDecoration.underline,
                            color: CustomColors.primary,
                            fontSize: 16)),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}