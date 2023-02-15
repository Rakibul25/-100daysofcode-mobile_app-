import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rakib/widgets/skillscard.dart';
import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //CircularProgressIndicator(value: 0.6,);
    return Container(
        width: size.width,
        color: CustomColors.darkBackground,
        child: SizedBox(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text("Skills",
                    style: GoogleFonts.getFont('Delius',
                        color: CustomColors.primary, fontSize: 20)),
                const SizedBox(height: 20),
                LayoutBuilder(builder: (context, consraints) {
                  if (consraints.maxWidth >= Breakpoints.lg) {
                    return Container(
                      width: size.width * .65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Language & Tools",
                                            style: GoogleFonts.getFont('Delius',
                                                color: CustomColors.gray,
                                                fontSize: 22)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              children: const [
                                                SkillCard(
                                                    percentage: 0.7,
                                                    label: "Dart"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                SkillCard(
                                                    percentage: 0.7,
                                                    label: "Java"),
                                              ],
                                            ),
                                            Column(
                                              children: const [
                                                SkillCard(
                                                    percentage: 0.7,
                                                    label: "C"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                SkillCard(
                                                    percentage: 0.6,
                                                    label: "Python"),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Lottie.asset('assets/lotties/programming.json',
                              height: 200, width: 200),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: const [
                                            SkillCardLinear(
                                                percentage: 0.7, label: "Dart"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            SkillCardLinear(
                                                percentage: 0.7, label: "Java"),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (consraints.maxWidth < Breakpoints.lg &&
                      consraints.maxWidth >= Breakpoints.md) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SkillCard(percentage: 0.7, label: "Flutter"),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SkillCard(percentage: 0.7, label: "Flutter"),
                      ],
                    );
                  }
                }),
              ]),
        ));
  }
}
