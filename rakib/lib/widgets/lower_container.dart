import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/widgets/project_card.dart';
import 'package:rakib/widgets/skill_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import '../utils/image_asset_constants.dart';
import 'hello_with_bio.dart';
import 'info.dart';
import 'intrest.dart';

class LowerContainer extends StatelessWidget {
  final double width;
  final List<Map> intrests;
  final GlobalKey intrestsKey;
  final GlobalKey skillsKey;

  const LowerContainer(
      {Key? key,
      required this.width,
      required this.intrests,
      required this.intrestsKey,
      required this.skillsKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        key: skillsKey,
        color: CustomColors.darkBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 40),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoints.lg) {
                return Column(
                  children: [
                    Text("Projects",
                        style: GoogleFonts.getFont('Delius',
                            decoration: TextDecoration.underline,
                            color: CustomColors.primary,
                            fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // skills cards
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'Flutter Development',
                              description:
                                  'I’m developing android,ios and web applications using flutter platform.',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'Backend Development',
                              description:
                                  'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                                title: 'Python Development',
                                description:
                                    'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                                width: width,
                                ratio: 0.35),
                          ],
                        ),
                        SizedBox(width: 0.05 * width),
                        // hello with bio and info
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'Flutter Development',
                              description:
                                  'I’m developing android,ios and web applications using flutter platform.',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'Backend Development',
                              description:
                                  'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                                title: 'Python Development',
                                description:
                                    'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                                width: width,
                                ratio: 0.35),

                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () async => !await launch(
                          'https://mail.google.com/mail/u/0/?fs=1&to=khalidlionel.2089@gmail.com&tf=cm'),
                      child: Text("View more and recent in github",
                          style: GoogleFonts.getFont('Delius',
                              decoration: TextDecoration.underline,
                              color: CustomColors.primary,
                              fontSize: 16)),
                    )
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // skills cards
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectCard(
                            title: 'Flutter Development',
                            description:
                                'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'Backend Development',
                            description:
                                'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'Python Development',
                            description:
                                'I’m developing maching learing and deep learning projects using standard python libraries and tensorflow api.',
                            width: 2 * width,
                            ratio: 0.45),
                      ],
                    ),
                    // hello with bio and info
                  ],
                );
              }
            }),
            SizedBox(
              height: width * 0.07,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                  left: width >= Breakpoints.lg ? width * 0.1 : width * 0.05),
              child: Text('Some of my intrests',
                  style: GoogleFonts.getFont('Delius',
                      color: Colors.white, fontSize: 19)),
            ),
            SizedBox(height: width * 0.03),
            // 820
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoints.lg) {
                return SizedBox(
                  width: width * 0.76,
                  height: 100,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 6,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) => Intrest(
                      intrest: intrests[index]['intrest'],
                      color: intrests[index]['color'],
                      textColor: intrests[index]['textColor'],
                      key: index == 4 ? intrestsKey : null,
                    ),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(
                      2,
                    ),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 40.0,
                  ),
                );
              } else if (constraints.maxWidth < Breakpoints.lg &&
                  constraints.maxWidth >= Breakpoints.sm) {
                return SizedBox(
                  width: width * 0.76,
                  height: 180,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 6,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) => Intrest(
                      intrest: intrests[index]['intrest'],
                      color: intrests[index]['color'],
                      textColor: intrests[index]['textColor'],
                      key: index == 4 ? intrestsKey : null,
                    ),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(
                      4,
                    ),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 40.0,
                  ),
                );
              } else {
                return SizedBox(
                  width: width * 0.76,
                  height: 360,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 6,
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) => Intrest(
                      intrest: intrests[index]['intrest'],
                      color: intrests[index]['color'],
                      textColor: intrests[index]['textColor'],
                      key: index == 4 ? intrestsKey : null,
                    ),
                    staggeredTileBuilder: (int index) =>
                        const StaggeredTile.fit(
                      6,
                    ),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 40.0,
                  ),
                );
              }
            }),
            const SizedBox(height: 10)
          ],
        ));
  }
}
