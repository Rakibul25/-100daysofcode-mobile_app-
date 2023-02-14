import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rakib/widgets/skillscard.dart';
import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //CircularProgressIndicator(value: 0.6,);
    return Container(
        width: size.width,
        height: size.height * .5,
        color: CustomColors.darkBackground,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 40),
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth >= Breakpoints.lg) {
                  return Container(
                    width: size.width * .65,
                    child: Column(
                      children: [
                        Text("Skills",
                            style: GoogleFonts.getFont('Delius',
                                color: CustomColors.primary, fontSize: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Lottie.asset('assets/lotties/programming.json',
                                    height: 200, width: 200),
                                Text("Language & Tools",
                                    style: GoogleFonts.getFont('Delius',
                                        color: CustomColors.gray,
                                        fontSize: 22)),
                              ],
                            ),
                            const SkillCard(percentage: 0.7, label: "Flutter")
                          ],
                        ),
                        SizedBox(width: 0.05 * size.width),
                        // hello with bio and info
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [],
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // skills cards
                      Text("Skills",
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.primary, fontSize: 20)),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                      // hello with bio and info
                    ],
                  );
                }
              }),
            ]));
  }
}
