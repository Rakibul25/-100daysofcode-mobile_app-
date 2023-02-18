import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/widgets/skillscard.dart';
import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../utils/image_asset_constants.dart';

class Skills extends StatelessWidget {
  final GlobalKey skillsKey;

  const Skills({Key? key, required this.skillsKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //CircularProgressIndicator(value: 0.6,);
    return Container(
        alignment: Alignment.center,
        key: skillsKey,
        width: size.width,
        color: CustomColors.darkBackground,
        child: SizedBox(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            LayoutBuilder(builder: (context, consraints) {
              if (consraints.maxWidth >= Breakpoints.lg) {
                return Column(
                  children: [
                    Container(
                      //width: size.width * .65,
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Text("Skills",
                              style: GoogleFonts.getFont('Delius',
                                  color: CustomColors.primary, fontSize: 20)),
                          const SizedBox(height: 20),
                          const Divider(),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  //language
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Language",
                                                style: GoogleFonts.getFont(
                                                    'Delius',
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
                                                        percentage: 0.7,
                                                        label: "Dart"),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    SkillCard(
                                                        percentage: 0.7,
                                                        label: "Java"),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    SkillCard(
                                                        percentage: 0.7,
                                                        label: "C"),
                                                  ],
                                                ),
                                                Column(
                                                  children: const [
                                                    SkillCard(
                                                        percentage: 0.6,
                                                        label: "SQL"),
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
                                width: size.width * .05,
                              ),
                              Image.asset(
                                ImageAssetConstants.coding,
                                height: 200,
                                width: 200,
                              ),
                              SizedBox(
                                width: size.width * .05,
                              ),
                              Container(
                                //Frameworks and tools
                                child: Column(
                                  children: [
                                    Text("FrameWorks, Tools & Technology",
                                        style: GoogleFonts.getFont('Delius',
                                            color: CustomColors.gray,
                                            fontSize: 22)),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            SkillCardLinear(
                                                percentage: 0.75,
                                                label: "Flutter"),
                                            SkillCardLinear(
                                                percentage: 0.7,
                                                label: "Firebase"),
                                            SkillCardLinear(
                                                percentage: 0.85,
                                                label: "Git/Github"),
                                            SkillCardLinear(
                                                percentage: 0.70,
                                                label: "Sqlite"),
                                            SkillCardLinear(
                                                percentage: 0.55,
                                                label: "Jira"),
                                            SkillCardLinear(
                                                percentage: 0.60,
                                                label: "Problem Solving"),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else if (consraints.maxWidth < Breakpoints.lg &&
                  consraints.maxWidth >= Breakpoints.md) {
                return SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      Text("Skills",
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.primary, fontSize: 20)),
                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            ImageAssetConstants.coding,
                            height: 200,
                            width: 200,
                          ),
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
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    children: const [
                                      SkillCard(percentage: 0.6, label: "SQL"),
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
                                percentage: 0.75, label: "Flutter"),
                            const SkillCardLinear(
                                percentage: 0.7, label: "Firebase"),
                            const SkillCardLinear(
                                percentage: 0.85, label: "Git/Github"),
                            const SkillCardLinear(
                                percentage: 0.70, label: "Sqlite"),
                            const SkillCardLinear(
                                percentage: 0.55, label: "Jira"),
                            const SkillCardLinear(
                                percentage: 0.60, label: "Problem Solving"),
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
                      const SizedBox(height: 40),
                      Text("Skills",
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.primary, fontSize: 20)),
                      const SizedBox(height: 20),
                      const Divider(),
                      Image.asset(
                        ImageAssetConstants.coding,
                        height: 200,
                        width: 200,
                      ),
                      const SizedBox(height: 20),
                      Text("Language",
                          style: GoogleFonts.getFont('Delius',
                              color: CustomColors.gray, fontSize: 18)),
                      const SizedBox(height: 20),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SkillCard(percentage: 0.7, label: "Dart"),
                          SizedBox(
                            height: 20,
                          ),
                          SkillCard(percentage: 0.7, label: "C"),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          SkillCard(percentage: 0.7, label: "Dart"),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SkillCard(percentage: 0.7, label: "Java"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          SkillCard(percentage: 0.6, label: "SQL"),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("FrameWorks & Tools",
                              style: GoogleFonts.getFont('Delius',
                                  color: CustomColors.gray, fontSize: 18)),
                          const SizedBox(
                            height: 18,
                          ),
                          const SkillCardLinear(
                              percentage: 0.75, label: "Flutter"),
                          const SkillCardLinear(
                              percentage: 0.7, label: "Firebase"),
                          const SkillCardLinear(
                              percentage: 0.85, label: "Git/Github"),
                          const SkillCardLinear(
                              percentage: 0.70, label: "Sqlite"),
                          const SkillCardLinear(
                              percentage: 0.55, label: "Jira"),
                          const SkillCardLinear(
                              percentage: 0.60, label: "Problem Solving"),
                        ],
                      ),
                    ],
                  ),
                );
              }
            }),
            const SizedBox(
              height: 70,
            ),
          ]),
        ));
  }
}
