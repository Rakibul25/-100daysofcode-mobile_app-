import 'dart:ui';

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
  final List<Map> interests;
  final GlobalKey interestsKey;
  final GlobalKey projectsKey;

  const LowerContainer({
    Key? key,
    required this.width,
    required this.interests,
    required this.interestsKey,
    required this.projectsKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(ImageAssetConstants.upperback),
              fit: BoxFit.cover),
        ),
        width: width,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.1),
              child: SizedBox(
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
                                    color: CustomColors.primary, fontSize: 20)),
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
                                      imagesource: 'assets/appss/homerent.png',
                                      link:
                                          'https://github.com/Rakibul25/HomeRent-part-of-100days-flutter-challenge-',
                                      width: width,
                                      ratio: 0.40, fontsize: 16,
                                    ),
                                    const SizedBox(height: 10),
                                    ProjectCard(
                                      title: 'BankApp-(Flutter Project)',
                                      imagesource: 'assets/appss/bank.png',
                                      link:
                                          'https://github.com/Rakibul25/Bank_UI-flutter-100days',
                                      width: width,
                                      ratio: 0.40,
                                        fontsize: 16
                                    ),
                                    const SizedBox(height: 10),
                                    ProjectCard(
                                        title:
                                            'ShareCare(A ride sharing app-Final year project)',
                                        imagesource:
                                            'assets/appss/sharecare.png',
                                        link:
                                            'https://github.com/Rakibul25/ShareCare',
                                        width: width,
                                        fontsize: 16,
                                        ratio: 0.40),

                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 10),
                                    ProjectCard(
                                        title: 'Ecommerce',
                                        imagesource: 'assets/appss/ecommerce.png',
                                        link:
                                        'https://github.com/Rakibul25/Ecommerce_flutter_bloc',
                                        width: width,
                                        ratio: 0.40,
                                        fontsize: 16
                                    ),
                                    const SizedBox(height: 10),
                                    ProjectCard(
                                      title: 'Classroom',
                                      imagesource: 'assets/appss/class.png',
                                      link:
                                          'https://github.com/Rakibul25/Android-lab-project',
                                      width: width,
                                      ratio: 0.40,
                                        fontsize: 16
                                    ),
                                    const SizedBox(height: 10),
                                    ProjectCard(
                                      title: 'Weather',
                                      imagesource: 'assets/appss/weather.png',
                                      link:
                                          'https://github.com/Rakibul25/weather-app-flutter-',
                                      width: width,
                                      ratio: 0.40,
                                        fontsize: 16
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () async => !await launch(
                                  'https://github.com/Rakibul25?tab=repositories'),
                              child: Text(
                                  "View more and recent projects in github",
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
                                    color: CustomColors.primary, fontSize: 20)),
                            const SizedBox(height: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ProjectCard(
                                    title: 'Ecommerce',
                                    imagesource: 'assets/appss/ecommerce.png',
                                    link:
                                    'https://github.com/Rakibul25/Ecommerce_flutter_bloc',
                                    width: 2 * width,
                                    ratio: 0.35,
                                    fontsize: 12
                                ),
                                const SizedBox(height: 10),
                                ProjectCard(
                                    title: 'HomeRent-(Flutter Project)',
                                    imagesource: 'assets/appss/homerent.png',
                                    link:
                                        'https://github.com/Rakibul25/HomeRent-part-of-100days-flutter-challenge-',
                                    width: 2 * width,
                                    ratio: 0.35,
                                    fontsize: 12),
                                const SizedBox(height: 10),
                                ProjectCard(
                                    title: 'BankApp-(Flutter Project)',
                                    imagesource: 'assets/appss/bank.png',
                                    link:
                                        'https://github.com/Rakibul25/Bank_UI-flutter-100days',
                                    width: 2 * width,
                                    ratio: 0.35,
                                    fontsize: 12),
                                const SizedBox(height: 10),
                                ProjectCard(
                                    title:
                                        'ShareCare(A ride sharing app-Final year project)',
                                    imagesource: 'assets/appss/sharecare.png',
                                    link:
                                        'https://github.com/Rakibul25/ShareCare',
                                    width: 2 * width,
                                    ratio: 0.35,
                                    fontsize: 12),
                                const SizedBox(height: 10),
                                ProjectCard(
                                    title: 'weather',
                                    imagesource: 'assets/appss/weather.png',
                                    link:
                                        'https://github.com/Rakibul25/weather-app-flutter-',
                                    width: 2 * width,
                                    ratio: 0.35,
                                    fontsize: 12),
                                const SizedBox(height: 10),
                                ProjectCard(
                                    title: 'CareerBuilder-Web Project',
                                    imagesource: 'assets/appss/class.png',
                                    link:
                                        'https://github.com/Rakibul25/Android-lab-project',
                                    width: 2 * width,
                                    ratio: 0.35,
                                    fontsize: 12),
                                const SizedBox(height: 10),
                                const SizedBox(height: 10),
                                InkWell(
                                  onTap: () async => !await launch(
                                      'https://github.com/Rakibul25?tab=repositories'),
                                  child: Text(
                                      "View more and recent projects in github",
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
                    Center(
                      child: Container(
                        color: CustomColors.brightBackground,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text('Interests',
                                      style: GoogleFonts.getFont('Delius',
                                          color: CustomColors.primary,
                                          fontSize: 19)),
                                ),
                              ),
                              SizedBox(height: width * 0.03),
                              // 820
                              Center(
                                key: interestsKey,
                                child: LayoutBuilder(
                                    builder: (context, constraints) {
                                  if (constraints.maxWidth >= Breakpoints.lg) {
                                    return SizedBox(
                                      width: width * 0.46,
                                      height: 100,
                                      child: StaggeredGridView.countBuilder(
                                        crossAxisCount: 5,
                                        itemCount: 5,
                                        itemBuilder:
                                            (BuildContext context, int index) =>
                                                Intrest(
                                          intrest: interests[index]['interest'],
                                          color: interests[index]['color'],
                                          textColor: interests[index]['textColor'],

                                        ),
                                        staggeredTileBuilder: (int index) =>
                                            const StaggeredTile.fit(
                                          2,
                                        ),
                                        mainAxisSpacing: 10.0,
                                        crossAxisSpacing: 40.0,
                                      ),
                                    );
                                  } else if (constraints.maxWidth <
                                          Breakpoints.lg &&
                                      constraints.maxWidth >= Breakpoints.sm) {
                                    return Center(
                                      child: SizedBox(
                                        width: width * 0.76,
                                        height: 180,
                                        child: Center(
                                          child: StaggeredGridView.countBuilder(
                                            crossAxisCount: 5,
                                            itemCount: 5,
                                            itemBuilder: (BuildContext context,
                                                    int index) =>
                                                Intrest(
                                              intrest: interests[index]['interest'],
                                              color: interests[index]['color'],
                                              textColor: interests[index]
                                                  ['textColor'],
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
                                            itemBuilder: (BuildContext context,
                                                    int index) =>
                                                Intrest(
                                              intrest: interests[index]['interest'],
                                              color: interests[index]['color'],
                                              textColor: interests[index]
                                                  ['textColor'],
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
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
