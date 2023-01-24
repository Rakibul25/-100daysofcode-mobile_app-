import 'package:flutter/material.dart';

class HomePc extends StatelessWidget {
  const HomePc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 50,
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
