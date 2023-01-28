import 'package:flutter/material.dart';
import 'package:rakib/constants/color_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePc extends StatefulWidget {
  const HomePc({Key? key}) : super(key: key);

  @override
  State<HomePc> createState() => _HomePcState();
}

class _HomePcState extends State<HomePc> {
  @override
  Widget build(BuildContext context) {
    bool isHovering = false;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 1000),
        child: Container(
          color: COLOR_BLACK,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          print('Download CV!');
                          const url = 'https://flutterdevs.com/';
                          if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: true, forceWebView: true);
                          } else {
                          throw 'Could not launch $url';
                          }
                        },
                        child: const Text('Download CV'),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            minimumSize: const Size(200, 50),
                            primary: Colors.teal),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: width / 50,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
          color: COLOR_BLACK,
          child: Row(
            children: [
              Container(
                width: width * 0.55,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/myavatar.png',
                            height: 350,
                            width: 350,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width * 0.45,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        "2nd",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
