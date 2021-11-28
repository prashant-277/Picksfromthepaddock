import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/informTrainers.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/longestTraeller.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

import 'STATISTIS/courseGuide.dart';
import 'STATISTIS/dailyTeamNaps.dart';
import 'STATISTIS/horsetofollow.dart';
import 'STATISTIS/informJockys.dart';
import 'STATISTIS/marketMovers.dart';
import 'STATISTIS/silkMagazine.dart';

class Statistics_page extends StatefulWidget {
  var check;

  Statistics_page(this.check);

  @override
  _Statistics_pageState createState() => _Statistics_pageState();
}

class _Statistics_pageState extends State<Statistics_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "STATISTICS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/statistic.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: query.height,
          width: query.width,
          color: backgroundColor,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 2.w),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: longestTraeller("menu")));
                  },
                  icon: Image.asset("Assets/Icons/slide4.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: informJockys("menu")));
                  },
                  icon: Image.asset("Assets/Icons/slide3.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: informTrainers("menu")));
                  },
                  icon: Image.asset("Assets/Icons/slide7.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: courseGuide("menu")));
                  },
                  icon: Image.asset("Assets/Icons/CourseGuideSlide.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: marketMovers("menu")));
                  },
                  icon: Image.asset("Assets/Icons/MarketMoversSlide.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: dailyTeamNaps("menu")));
                  },
                  icon: Image.asset("Assets/Icons/slide1.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: horsetofollow("menu")));
                  },
                  icon: Image.asset("Assets/Icons/slide2.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            alignment: Alignment.bottomCenter,
                            duration: Duration(milliseconds: 300),
                            child: silkMagazine("menu")));
                  },
                  icon: Image.asset("Assets/Icons/slide6.png"),
                  iconSize: 150.sp,
                  padding: EdgeInsets.zero),
            ],
          ),
        ),
      ),
    );
  }
}
