import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/MENU/Meettheteam_page.dart';
import 'package:picksfromthepaddock/MENU/Podcast_page.dart';
import 'package:picksfromthepaddock/MENU/Profile_page.dart';
import 'package:picksfromthepaddock/MENU/RaceCard_page.dart';
import 'package:picksfromthepaddock/MENU/Statistics_page.dart';
import 'package:picksfromthepaddock/MENU/Video_page.dart';
import 'package:picksfromthepaddock/NEWS/News_page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/TIPS/Tips_page.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

import 'Chat_page.dart';
import 'Commentary_page.dart';
import 'Competition_page.dart';
import 'ContactUs_page.dart';
import 'EYECATCHERS/EyeCatchers_page.dart';
import 'Jointheteam_page.dart';
import 'Result_page.dart';
import 'Settings_page.dart';

class Menu_page extends StatefulWidget {
  const Menu_page({Key key}) : super(key: key);

  @override
  _Menu_pageState createState() => _Menu_pageState();
}

class _Menu_pageState extends State<Menu_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        appBar: AppBar(),
        imageBack: false,
        headerText: "MENU",
        widgets: [Text("")],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                spacing: 35.0,
                runSpacing: 35.0,
                direction: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Tips_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/tops.png", width: 23.w),
                        Text("TIPS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: News_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/news1.png", width: 23.w),
                        Text("NEWS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Podcast_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/podcast.png", width: 23.w),
                        Text("PODCAST",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Video_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/video.png", width: 23.w),
                        Text("VIDEOS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: RaceCard_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/race_card.png", width: 23.w),
                        Text("RACE CARDS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Result_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/result.png", width: 23.w),
                        Text("RESULTS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Commentary_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/commentary.png", width: 23.w),
                        Text("COMMENTARY",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: EyeCatchers_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/eye_catcher.png", width: 23.w),
                        Text("EYE CATCHERS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Chat_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/chat.png", width: 23.w),
                        Text("CHAT",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Competition_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/compitition.png", width: 23.w),
                        Text("COMPETITION",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Statistics_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/statistic.png", width: 23.w),
                        Text("STATISTICS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: ContactUs_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/contact.png", width: 23.w),
                        Text("CONTACT US",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Meettheteam_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/meet.png", width: 23.w),
                        Text("MEET THE TEAM",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Jointheteam_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/join.png", width: 23.w),
                        Text("JOIN THE TEAM",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Settings_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/settings.png", width: 23.w),
                        Text("SETTINGS",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: Profile_page("menu")));
                    },
                    child: Column(
                      children: [
                        Image.asset("Assets/Icons/profile.png", width: 23.w),
                        Text("MY PROFILE",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
