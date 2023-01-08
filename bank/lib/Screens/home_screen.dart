import 'package:bank/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<T> map<T>(List list,Function handler){
    List<T> result = [];
    for (var i = 0;i < list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      print('tapped');
                    },
                      child: SvgPicture.asset('assets/svg/navbar.svg', height: 35,width: 35,)),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.jpg')
                      )
                    ),
                  )
                ],
              ),
            ),
            //card
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16,bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Good Morning',style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000)
                  )),
                  Text('Rakibul Islam',style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000)
                  ))
                ],
              ),
            ),
            Container(
              height: 199,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16,right: 6),
                itemCount: cards.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 199,
                    width: 344,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Color(cards[index].cardBackground),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(child: SvgPicture.asset(cards[index].cardElementTop, height: 80, width: 80),),
                        Positioned(
                          bottom:0,
                          right:0,
                          child: SvgPicture.asset(cards[index].cardElementBottom, height: 80, width: 80),),
                        Positioned(
                            left: 29,
                            top: 75,
                            child: Text(
                              cards[index].cardNumber,
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                              ),
                            ),
                        ),
                        Positioned(
                          top: 15,
                          left: 25,
                          child: SvgPicture.asset(cards[index].cardType, height: 50, width: 50),),
                        Positioned(
                          left: 29,
                          top: 100,
                          child: Text(
                            cards[index].user,
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 85,
                          child: Text(
                            cards[index].cardExpired,
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 13, top: 29),
              child: Row(
                children: <Widget>[
                  Text('Operations'),
                  Row(
                    children: <Widget>[
                      Container(


                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
