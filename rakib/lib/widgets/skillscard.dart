import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: Duration(seconds: 1),
          builder: (context, double value, child) => Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
              Center(
                child: Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
