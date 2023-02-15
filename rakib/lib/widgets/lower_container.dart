import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/widgets/project_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import '../utils/image_asset_constants.dart';
import 'interest.dart';

class LowerContainer extends StatelessWidget {
  final double width;
  final List<Map> intrests;
  final GlobalKey intrestsKey;
  final GlobalKey projectsKey;

  const LowerContainer({Key? key,
    required this.width,
    required this.intrests,
    required this.intrestsKey,
    required this.projectsKey,
   })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        color: CustomColors.darkBackground,
        child: Column(
          key: projectsKey,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 40),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth >= Breakpoints.lg) {
                return Column(
                  children: [
                    Text("Projects",
                        style: GoogleFonts.getFont('Delius',
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
                              title: 'HomeRent-(Flutter Project)',
                              imagesource:
                              'assets/appss/homerent.png',
                              link: 'https://github.com/Rakibul25/-100daysofcode-mobile_app-/tree/100days/appss',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'BankApp-(Flutter Project)',
                              imagesource:
                              'assets/appss/homerent.png',
                              link: 'https://github.com/Rakibul25/-100daysofcode-mobile_app-/tree/100days/bank',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                                title: 'ShareCare(A ride sharing app-Final year project)',
                                imagesource:
                                'assets/appss/homerent.png',
                                link: 'https://github.com/Rakibul25/ShareCare',
                                width: width,
                                ratio: 0.35),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'HomeRent-(Flutter Project)',
                              imagesource:
                              'assets/appss/homerent.png',
                              link: 'https://github.com/Rakibul25/-100daysofcode-mobile_app-/tree/100days/appss',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                              title: 'BankApp-(Flutter Project)',
                              imagesource:
                              'assets/appss/homerent.png',
                              link: 'https://github.com/Rakibul25/-100daysofcode-mobile_app-/tree/100days/bank',
                              width: width,
                              ratio: 0.35,
                            ),
                            const SizedBox(height: 10),
                            ProjectCard(
                                title: 'ShareCare(A ride sharing app-Final year project)',
                                imagesource:
                                'assets/appss/homerent.png',
                                link: 'https://github.com/Rakibul25/ShareCare',
                                width: width,
                                ratio: 0.35),
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () async =>
                      !await launch(
                          'https://github.com/Rakibul25?tab=repositories'),
                      child: Text("View more and recent projects in github",
                          style: GoogleFonts.getFont('Delius',
                              decoration: TextDecoration.underline,
                              color: CustomColors.primary,
                              fontSize: 16)),
                    )
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // skills cards
                    Text("Projects",
                        style: GoogleFonts.getFont('Delius',
                            color: CustomColors.primary,
                            fontSize: 20)),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProjectCard(
                            title: 'HomeRent-(Flutter Project)',
                            imagesource: 'assets/appss/homerent.png',
                            link: 'https://github.com/Rakibul25/-100daysofcode-mobile_app-/tree/100days/appss',
                            width: 2*width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'BankApp-(Flutter Project)',
                           imagesource: 'assets/appss/homerent.png',
                            link: 'https://github.com/Rakibul25/-100daysofcode-mobile_app-/tree/100days/bank',
                            width: 2 * width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'ShareCare(A ride sharing app-Final year project)',
                            imagesource: 'assets/appss/homerent.png',
                            link: 'https://github.com/Rakibul25/ShareCare',
                            width: 2 * width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'Course Content Management(Android Java lab project with firebase)',
                            imagesource: 'assets/appss/homerent.png',
                            link: 'https://github.com/Rakibul25/Android-lab-project',
                            width: 2 * width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'CareerBuilder-Web Project',
                            imagesource: 'assets/appss/homerent.png',
                            link: 'https://github.com/Rakibul25/web-app-uni-course-',
                            width: 2 * width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        ProjectCard(
                            title: 'Portfolio(1) with flutter',
                            imagesource: 'assets/appss/homerent.png',
                            link: 'https://github.com/Rakibul25/myPortfolio',
                            width: 2 * width,
                            ratio: 0.35),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () async =>
                          !await launch(
                              'https://github.com/Rakibul25?tab=repositories'),
                          child: Text("View more and recent projects in github",
                              style: GoogleFonts.getFont('Delius',
                                  decoration: TextDecoration.underline,
                                  color: CustomColors.primary,
                                  fontSize: 16)),
                        )
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
              color: CustomColors.brightBackground,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('Intrests',
                            style: GoogleFonts.getFont('Delius',
                                color: CustomColors.primary, fontSize: 19)),
                      ),
                    ),
                    SizedBox(height: width * 0.03),
                    // 820
                    Center(
                      child: LayoutBuilder(builder: (context, constraints) {
                        if (constraints.maxWidth >= Breakpoints.lg) {
                          return SizedBox(
                            width: width * 0.46,
                            height: 100,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 5,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) =>
                                  Intrest(
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
                          return Center(
                            child: SizedBox(
                              width: width * 0.76,
                              height: 180,
                              child: Center(
                                child: StaggeredGridView.countBuilder(
                                  crossAxisCount: 5,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) =>
                                      Intrest(
                                        intrest: intrests[index]['intrest'],
                                        color: intrests[index]['color'],
                                        textColor: intrests[index]['textColor'],
                                        key: index == 4 ? intrestsKey : null,
                                      ),
                                  staggeredTileBuilder: (int index) =>
                                  const StaggeredTile.fit(
                                    5,
                                  ),
                                  mainAxisSpacing: 10.0,
                                  crossAxisSpacing: 40.0,
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Center(
                            child: SizedBox(
                              width: width * 0.76,
                              height: 360,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: StaggeredGridView.countBuilder(
                                  crossAxisCount: 5,
                                  itemCount: 5,
                                  itemBuilder: (BuildContext context, int index) =>
                                      Intrest(
                                        intrest: intrests[index]['intrest'],
                                        color: intrests[index]['color'],
                                        textColor: intrests[index]['textColor'],
                                        key: index == 5 ? intrestsKey : null,
                                      ),
                                  staggeredTileBuilder: (int index) =>
                                  const StaggeredTile.fit(
                                    4,
                                  ),
                                  mainAxisSpacing: 10.0,
                                  crossAxisSpacing: 40.0,
                                ),
                              ),
                            ),
                          );
                        }
                      }),
                    ),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
