import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rakib/utils/image_asset_constants.dart';
import 'package:rakib/widgets/rakib_avatar_image.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'description.dart';
import 'hello.dart';
import 'nav_bar.dart';

class UpperContainer extends StatelessWidget {
  final double width;
  final GlobalKey intrestsKey;
  final ScrollController scrollController;

  const UpperContainer(
      {required this.width,
      Key? key,
      required this.intrestsKey,
      required this.scrollController})
      : super(key: key);

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
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey.withOpacity(0.1),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                LayoutBuilder(builder: (context, consraints) {
                  if (consraints.maxWidth >= Breakpoints.lg) {
                    return SizedBox(
                      height: width*.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(width: 20),
                              HelloWithBio(
                                width: 0.45 * width,
                                ratio: 0.5,
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              RakibAvatar(
                                width: width,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Description(
                                isVertical: false,
                                width: width,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else if (consraints.maxWidth < Breakpoints.lg &&
                      consraints.maxWidth >= Breakpoints.md) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 70),
                        RakibAvatar(width: width*1.3),
                        SizedBox(height: 0.05 * width),
                        HelloWithBio(
                          width: 0.65 * width,
                          ratio: 1,
                        ),
                        SizedBox(height: 0.05 * width),
                        Description(
                          isVertical: true,
                          width: width,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: width * 0.07),
                        Center(child: RakibAvatar(width: 2 * width)),
                        SizedBox(height: 0.05 * width),
                        HelloWithBio(
                          width: 0.45 * width,
                          ratio: 1,
                        ),
                        SizedBox(height: 0.05 * width),
                        Description(isVertical: true, width: width),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    );
                  }
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
