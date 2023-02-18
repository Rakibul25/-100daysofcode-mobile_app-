import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/utils/image_asset_constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/custom_colors.dart';
class UnderConstruction extends StatelessWidget {
  const UnderConstruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: CustomColors.brightBackground,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Coming soon.",
                  style: GoogleFonts.getFont('Delius',
                      color: CustomColors.white,
                      fontSize: 20)),
              const SizedBox(height: 15,),
              Text("This site is under construction.",
                  style: GoogleFonts.getFont('Delius',
                      color: CustomColors.white,
                      fontSize: 15)),
              const SizedBox(height: 15,),
              Image.asset(ImageAssetConstants.under_construction, height: 150,width: 150,),
              const SizedBox(height: 15,),
              InkWell(
                onTap: () async => !await launch(
                    'https://mail.google.com/mail/u/0/?fs=1&to=mdrakib.mri93@gmail.com&tf=cm'),
                child: Text("Mail me in case of emergency.",
                    style: GoogleFonts.getFont('Delius',
                        decoration: TextDecoration.underline,
                        color: CustomColors.primary,
                        fontSize: 16)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
