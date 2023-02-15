import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rakib/widgets/skillscard.dart';
import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Skills extends StatelessWidget {
  final GlobalKey skillsKey;

  const Skills({Key? key, required this.skillsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //CircularProgressIndicator(value: 0.6,);
    return Container(
        key: skillsKey,
        width: size.width,
        color: CustomColors.darkBackground,
        child: SizedBox(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 40),
            Text("Skills",
                style: GoogleFonts.getFont('Delius',
                    color: CustomColors.primary, fontSize: 20)),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            LayoutBuilder(builder: (context, consraints) {
              if (consraints.maxWidth >= Breakpoints.lg) {
                return Container(
                  //width: size.width * .65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          //language
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Language",
                                        style: GoogleFonts.getFont('Delius',
                                            color: CustomColors.gray,
                                            fontSize: 22)),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: const [
                                            SkillCard(
                                                percentage: 0.7, label: "Dart"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            SkillCard(
                                                percentage: 0.7, label: "Java"),
                                          ],
                                        ),
                                        Column(
                                          children: const [
                                            SkillCard(
                                                percentage: 0.7, label: "C"),
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
                      SizedBox(
                        width: size.width * .1,
                      ),
                      Lottie.asset('assets/lotties/programming.json',
                          height: 200, width: 200),
                      SizedBox(
                        width: size.width * .1,
                      ),
                      Container(
                        //Frameworks and tools
                        child: Column(
                          children: [
                            Text("FrameWorks & Tools",
                                style: GoogleFonts.getFont('Delius',
                                    color: CustomColors.gray, fontSize: 22)),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SkillCardLinear(
                                        percentage: 0.7, label: "Dart"),
                                    SkillCardLinear(
                                        percentage: 0.7, label: "Java"),
                                    SkillCardLinear(
                                        percentage: 0.7, label: "Java"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Lottie.asset('assets/lotties/programming.json',
                              height: 200, width: 200),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text("Language",
                                  style: GoogleFonts.getFont('Delius',
                                      color: CustomColors.gray, fontSize: 18)),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      SkillCard(percentage: 0.7, label: "C"),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SkillCard(
                                          percentage: 0.6, label: "Python"),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: const [
                                      SkillCard(percentage: 0.7, label: "Dart"),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SkillCard(percentage: 0.7, label: "Java"),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [
                            Text("FrameWorks & Tools",
                                style: GoogleFonts.getFont('Delius',
                                    color: CustomColors.gray, fontSize: 18)),
                            const SizedBox(
                              height: 18,
                            ),
                            const SkillCardLinear(
                                percentage: 0.7, label: "Dart"),
                            const SkillCardLinear(
                                percentage: 0.7, label: "Java"),
                            const SkillCardLinear(
                                percentage: 0.7, label: "Java"),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            }),
          ]),
        ));
  }
}
