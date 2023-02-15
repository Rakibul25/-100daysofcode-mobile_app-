import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import '../utils/image_asset_constants.dart';
import 'nav_bar_button.dart';
import 'nav_bar_item.dart';
import 'nav_bar_item_with_icon.dart';

class NavBar extends StatelessWidget {
  final double width;
  final ScrollController scrollController;
  late final RxDouble collapsableHeight;
  final GlobalKey intrestsKey;
  final GlobalKey skillsKey;

  NavBar(
      {required this.width,
      required this.scrollController,
      Key? key,
      required this.intrestsKey, required this.skillsKey})
      : super(key: key) {
    collapsableHeight = 0.0.obs;
  }

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double y = position.dy;
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget navBarRow = Container(
      color: CustomColors.brightBackground,
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavBarItem(
                    text: 'Intrests',
                    onTap: () => scrollToWidgetByKey(intrestsKey),
                  ),
                  const SizedBox(width: 10),
                  NavBarItem(
                    text: 'Skills',
                    onTap: () => scrollToWidgetByKey(skillsKey),
                  ),
                  const SizedBox(width: 10),
                ]),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          const SizedBox(width: 10),
          Row(children: const [
            NavBarItemWithIcon(
              text: 'github',
              icon: ImageAssetConstants.github,
              url: 'https://github.com/Rakibul25',
            ),
            SizedBox(width: 10),
            NavBarItemWithIcon(
                text: 'Instagram',
                icon: ImageAssetConstants.instagram,
                url: 'https://www.instagram.com/rakibul_islam_25/'),
            SizedBox(width: 10),
            NavBarItemWithIcon(
                text: 'linkedIn',
                icon: ImageAssetConstants.linkedIn,
                url: 'https://www.linkedin.com/in/rakibul-islam-9078b1187/'),
            SizedBox(width: 5),
          ])
        ])
      ]),
    );
    List<Widget>? navBarColumn = [
      NavBarItem(
        text: 'Intrests',
        onTap: () => scrollToWidgetByKey(intrestsKey),
      ),
      NavBarItem(
        text: 'Skills',
        onTap: () => scrollToWidgetByKey(skillsKey),
      ),
      NavBarItem(
          text: 'github',
          onTap: () async {
            await launch('https://github.com/Rakibul25');
          }),
      NavBarItem(
          text: 'Instagram',
          onTap: () async =>
              await launch('https://www.instagram.com/rakibul_islam_25/')),
      NavBarItem(
          text: 'linkedIn',
          onTap: () async => await launch(
              'https://www.linkedin.com/in/rakibul-islam-9078b1187/')),
    ];
    return Stack(
      children: [
        ObxValue<RxDouble>(
            (data) => AnimatedContainer(
                  margin: const EdgeInsets.only(top: 30.0,bottom: 5.0),
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.ease,
                  height: data.value,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: CustomColors.darkBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: navBarColumn,
                    ),
                  ),
                ),
            collapsableHeight),
        Container(
          height: 30.0,
          margin: const EdgeInsets.only(top: 15.0,bottom: 5.0),
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: (width < Breakpoints.xlg)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NavBarButton(
                        onPressed: () {
                          if (collapsableHeight.value == 0.0) {
                            collapsableHeight.value = 140.0;
                          } else if (collapsableHeight.value == 140.0) {
                            collapsableHeight.value = 0.0;
                          }
                        },
                        width: width),
                  ],
                )
              : navBarRow,
        ),
      ],
    );
  }
}
