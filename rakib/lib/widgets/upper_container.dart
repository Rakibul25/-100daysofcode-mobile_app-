import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rakib/utils/image_asset_constants.dart';
import 'package:rakib/widgets/rakib_avatar_image.dart';

import '../utils/breakpoints.dart';
import '../utils/custom_colors.dart';
import 'description.dart';
import 'hello.dart';
import 'nav_bar.dart';

class UpperContainer extends StatefulWidget {
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
  State<UpperContainer> createState() => _UpperContainerState();
}

class _UpperContainerState extends State<UpperContainer> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    _controller.forward();
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage(ImageAssetConstants.upperback),
            fit: BoxFit.cover),
      ),
      width: widget.width,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey.withOpacity(0.1),
            child: SizedBox(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  LayoutBuilder(builder: (context, consraints) {
                    if (consraints.maxWidth >= Breakpoints.lg) {
                      return SizedBox(
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 70,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(width: 20),
                                HelloWithBio(
                                  width: 0.45 * widget.width,
                                  ratio: 0.5,
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                SlideTransition(
                                  position: _offsetAnimation,
                                  child: RakibAvatar(
                                    width: widget.width,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                SlideTransition(
                                  position: _offsetAnimation,
                                  child: Description(
                                    isVertical: false,
                                    width: widget.width,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 70,),
                          ],
                        ),
                      );
                    } else if (consraints.maxWidth < Breakpoints.lg &&
                        consraints.maxWidth >= Breakpoints.md) {
                      return SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 30),
                            RakibAvatar(width: widget.width*1.3),
                            SizedBox(height: 0.01 * widget.width),
                            HelloWithBio(
                              width: 0.65 * widget.width,
                              ratio: 1,
                            ),
                            SizedBox(height: 0.05 * widget.width),
                            Description(
                              isVertical: true,
                              width: widget.width,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      );
                    } else {
                      return SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10),
                            Center(child: RakibAvatar(width: 2 * widget.width)),
                            SizedBox(height: 0.05 * widget.width),
                            HelloWithBio(
                              width: 0.45 * widget.width,
                              ratio: 1,
                            ),
                            SizedBox(height: 0.05 * widget.width),
                            Description(isVertical: true, width: widget.width),
                            const SizedBox(
                              width: 60,
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
