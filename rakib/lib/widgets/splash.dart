
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/screen/portfolio.dart';
import 'package:rakib/screen/underconstruction.dart';

import '../utils/custom_colors.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Portfolio()));
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: CustomColors.brightBackground,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Loading Rakib",
                style: GoogleFonts.getFont('Delius',
                    color: CustomColors.white,
                    fontSize: 20)),
            const SizedBox(height: 30,),
            const CupertinoActivityIndicator(
              animating: true,
              radius: 20,
              color: Colors.white,

            )
          ],
        ),
      ),
    );
  }
}
