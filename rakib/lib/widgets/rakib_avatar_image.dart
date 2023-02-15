import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';
import '../utils/image_asset_constants.dart';


class RakibAvatar extends StatefulWidget {
  final double width;
  const RakibAvatar({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  State<RakibAvatar> createState() => _RakibAvatarState();
}

class _RakibAvatarState extends State<RakibAvatar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          width: widget.width*.20,
          height: widget.width*.20,
          decoration: BoxDecoration(
            color: const Color(0xff7c94b6),
            image: const DecorationImage(
              image: AssetImage(ImageAssetConstants.rakib_sit),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all( Radius.circular(155.0)),
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
