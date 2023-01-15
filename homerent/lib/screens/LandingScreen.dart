import 'package:flutter/material.dart';
import 'package:homerent/custom/BorderBox.dart';
import 'package:homerent/utils/constants.dart';
import 'package:homerent/utils/widget_functions.dart';

import '../custom/OptionButton.dart';
import '../data/sample_data.dart';
import '../utils/custom_functions.dart';
import 'DetailsPage.dart';

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
        child: Stack (
          children: [
            Column(
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
                  child: Text(
                    "City",
                    style: themeData.textTheme.bodyText2,
                  ),
                ),
                addVerticalSpace(10),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "Dhaka",
                    style: themeData.textTheme.headline1,
                  ),
                ),
                Padding(
                    padding: sidePadding,
                    child: Divider(
                      height: padding,
                      color: COLOR_GREY,
                    )),
                addVerticalSpace(10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: ["<\৳50,00000", "For Sale", "3-4 Beds", ">1000 sqft"]
                        .map((filter) => ChoiceOption(text: filter))
                        .toList(),
                  ),
                ),
                addVerticalSpace(10),
                Expanded(
                  child: Padding(
                    padding: sidePadding,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: house_Data.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: house_Data[index],
                          );
                        }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              width: size.width,
              child: Center(
                child: OptionButton(
                  text: "Map View",
                  icon: Icons.map_rounded,
                  width: size.width * 0.35,
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({super.key, required this.text});

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

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({this.itemData});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  itemData: itemData,
                )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset(itemData["image"])),
                const Positioned(
                    top: 15,
                    right: 15,
                    child: BorderBox(
                        padding: EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.favorite_border,
                          color: COLOR_BLACK,
                        )))
              ],
            ),
            addVerticalSpace(15),
            Row(
              children: [
                Text(
                  formatCurrency(itemData["amount"]),
                  style: themeData.textTheme.headline1,
                ),
                addHorizontalSpace(10),
                Text(
                  "${itemData["address"]}",
                  style: themeData.textTheme.bodyText2,
                )
              ],
            ),
            addVerticalSpace(10),
            Text(
              "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
              style: themeData.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
