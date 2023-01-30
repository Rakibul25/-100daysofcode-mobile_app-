import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import '../widgets/footer.dart';
import '../widgets/lower_container.dart';
import '../widgets/nav_bar.dart';
import '../widgets/upper_container.dart';


class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  late final List<Map> intrests;
  late final GlobalKey intrestsKey;
  late final GlobalKey homeKey;
  late final ScrollController scrollController;
  late final RxBool showFloatingButton;

  @override
  void initState() {
    intrestsKey = GlobalKey();
    homeKey = GlobalKey();
    scrollController = ScrollController();
    showFloatingButton = false.obs;

    intrests = [
      {
        'intrest': 'Coding',
        'color': CustomColors.darkBackground,
        'textColor': CustomColors.primary,
      },
      {
        'intrest': 'Photography',
        'color': CustomColors.darkBackground,
        'textColor': CustomColors.primary,
      },
      {
        'intrest': 'Writing',
        'color': CustomColors.darkBackground,
        'textColor': CustomColors.primary,
      },
      {
        'intrest': 'Travelling',
        'color': CustomColors.darkBackground,
        'textColor': CustomColors.primary,
      },
      {
        'intrest': 'Reading',
        'color': CustomColors.darkBackground,
        'textColor': CustomColors.primary,
      }
    ];

    scrollController.addListener(() {
      if (scrollController.offset >= Breakpoints.floatingButton) {
        showFloatingButton.value = true;
      } else {
        showFloatingButton.value = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: ObxValue<RxBool>(
              (data) => Visibility(
            visible: data.value,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FloatingActionButton(
                      onPressed: () => scrollController.animateTo(
                          scrollController.position.minScrollExtent,
                          duration: const Duration(milliseconds: 700),
                          curve: Curves.fastOutSlowIn),
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.arrow_upward,
                          color: CustomColors.brightBackground)),
                ],
              ),
            ),
          ),
          showFloatingButton),
      body: Container(
        color: CustomColors.brightBackground,
        width: width,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 130),
                  UpperContainer(width: width),
                  LowerContainer(
                      width: width,
                      intrests: intrests,
                      intrestsKey: intrestsKey,
                      ),
                  Container(
                    width: width,
                    height: 0.1,
                    color:CustomColors.gray,
                  ),
                  Footer(width: width,scrollController: scrollController,),
                ],
              ),
              NavBar(
                width: width,
                key: homeKey,
                scrollController: scrollController,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}