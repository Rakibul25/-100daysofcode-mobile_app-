import 'package:flutter/material.dart';
import 'package:homerent/custom/BorderBox.dart';
import 'package:homerent/utils/constants.dart';
import 'package:homerent/utils/widget_functions.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BorderBox(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.menu, color: COLOR_BLACK),
                  ),
                  BorderBox(
                    padding: EdgeInsets.all(8),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.notifications, color: COLOR_BLACK),
                  )
                ],
              ),
            ),
            addVerticalSpace(padding),
            Padding(
              padding: sidePadding,
              child: Text("City", style: themeData.textTheme.bodyText2,),
            ),
            addVerticalSpace(10),
            Padding(
              padding: sidePadding,
              child: Text("Dhaka", style: themeData.textTheme.headline1,),
            ),
            Padding(
              padding: sidePadding,
              child: Divider(
                height: padding,
                color: COLOR_GREY,
              )
            ),
            addVerticalSpace(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: ["<\৳50,00000","For Sale","3-4 Beds",">1000 sqft"]
                    .map((filter) => ChoiceOption(text: filter)).toList(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({super.key,  required this.text}) ;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: COLOR_GREY.withAlpha(25),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}
