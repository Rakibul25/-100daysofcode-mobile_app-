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
          constraints:const BoxConstraints(maxWidth:370),
          child: Image.asset(
            ImageAssetConstants.rakib,
            width: width * 0.29,
            height: width * 0.3,
          ),
        ),

      ],
    );
  }
}
