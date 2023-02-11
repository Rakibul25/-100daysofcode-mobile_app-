import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';
import '../utils/image_asset_constants.dart';


class RakibAvatar extends StatelessWidget {
  final double width;
  const RakibAvatar({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: width*.22,
          height: width*.22,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: AssetImage(ImageAssetConstants.rakib_sit),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all( Radius.circular(155.0)),
            border: Border.all(
              color: CustomColors.brightBackground,
              width: 4.0,
            ),
          ),
        ),

      ],
    );
  }
}
