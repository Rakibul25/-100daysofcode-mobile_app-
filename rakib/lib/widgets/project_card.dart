import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/utils/image_asset_constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String imagesource;
  final String link;
  final double width;
  final double ratio;

  const ProjectCard(
      {required this.title,
      required this.imagesource,
      required this.link,
      required this.width,
      required this.ratio,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      color: CustomColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
       children: [
         SizedBox(
           width: width * ratio,
           height: size.height * .45,
           child: Container(
               height: size.height * ratio,
               width: size.width * 0.30,
               child: Image.asset(imagesource)),
         ),
         InkWell(
           onTap: () async => !await launch(link),
           child: Text("View in github",
               style: GoogleFonts.getFont('Delius',
                   decoration: TextDecoration.underline,
                   color: Colors.black,
                   fontSize: 16)),
         )

       ],
      ),

    );
  }
}
