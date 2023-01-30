import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/widgets/project_card.dart';
import 'package:rakib/widgets/skill_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoints.lg) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // skills cards
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Skills",
                            style: GoogleFonts.getFont('Delius',
                                decoration: TextDecoration.underline,
                                color: CustomColors.primary,
                                fontSize: 20)),
                        const SizedBox(height: 10),
                        SkillCard(
                          title: 'Flutter Development',
                          width: width,
                          ratio: 0.15,
                        ),
                        const SizedBox(height: 10),
                        SkillCard(
                          title: 'Backend Development',
                          width: width,
                          ratio: 0.15,
                        ),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Python Development',
                            width: width,
                            ratio: 0.15),
                      ],
                    ),
                    SizedBox(width: 0.05 * width),
                    // hello with bio and info
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("projects",
                            style: GoogleFonts.getFont('Delius',
                                decoration: TextDecoration.underline,
                                color: CustomColors.primary,
                                fontSize: 20)),
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
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // skills cards
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillCard(
                            title: 'Flutter Development',
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Backend Development',
                            width: 2 * width,
                            ratio: 0.45),
                        const SizedBox(height: 10),
                        SkillCard(
                            title: 'Python Development',
                            width: 2 * width,
                            ratio: 0.45),
                      ],
                    ),
                    // hello with bio and info
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        HelloWithBio(width: 3 * width,ratio: 0.3,),
                        const SizedBox(
                          height: 35,
                        ),
                        Info(width: 3 * width,ratio:0.3),
                      ],
                    )
                  ],
                );
              }
            }),
            SizedBox(
              height: width * 0.07,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left:width>=Breakpoints.lg? width * 0.1:width * 0.05),
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
            const SizedBox(height:10)
        
          ],
        ));
  }
}
