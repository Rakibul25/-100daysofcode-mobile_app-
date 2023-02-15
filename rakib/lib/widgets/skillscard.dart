import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rakib/utils/custom_colors.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: Duration(seconds: 4),
                builder: (context, double value, child) => Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: value,
                      color: CustomColors.primary,
                      backgroundColor: Colors.black,
                      strokeWidth: 3,
                    ),
                    Center(
                      child: Text(
                        (value * 100).toInt().toString() + "%",
                        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
              style: GoogleFonts.getFont('Delius',
                  color: CustomColors.gray,
                  fontSize: 15)
          ),
        ],
      ),
    );
  }
}
class SkillCardLinear extends StatelessWidget {
  const SkillCardLinear({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: Duration(seconds: 4),
          builder: (context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    label,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text((value * 100).toInt().toString() + "%"),
                ],
              ),
              SizedBox(height: 10),
              LinearProgressIndicator(
                value: value,
                color: CustomColors.primary,
                backgroundColor: Colors.black,
              ),
            ],
          ),
      ),
    );
  }
}

