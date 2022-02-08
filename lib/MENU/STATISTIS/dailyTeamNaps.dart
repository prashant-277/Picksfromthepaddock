import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/teamNapsPage.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class dailyTeamNaps extends StatefulWidget {
  var check;

  dailyTeamNaps(this.check);

  @override
  _dailyTeamNapsState createState() => _dailyTeamNapsState();
}

class _dailyTeamNapsState extends State<dailyTeamNaps> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "DAILY TEAM NAPS",
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
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: teamNapsPage("menu","https://www.horseracing.net/tipsters/cambridge-evening-news/luke-tucker","LUKE TUCKER")));
                },
                contentPadding: EdgeInsets.zero,
                tileColor: primaryWhite,
                leading: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Icons/user.png',
                  ),
                ),
                title: Text(
                  "LUKE TUCKER",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              SizedBox(height: 1.5.h),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: teamNapsPage("menu","https://www.horseracing.net/tipsters/ipswich-star/matt-polley","MATT POLLEY")));
                },
                contentPadding: EdgeInsets.zero,
                tileColor: primaryWhite,
                leading: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Icons/user.png',
                  ),
                ),
                title: Text(
                  "MATT POLLEY",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              SizedBox(height: 1.5.h),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: teamNapsPage("menu","https://www.horseracing.net/tipsters/jersey-evening-post/rory-paddock","RORY PADDOK")));
                },
                contentPadding: EdgeInsets.zero,
                tileColor: primaryWhite,
                leading: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Icons/user.png',
                  ),
                ),
                title: Text(
                  "RORY PADDOK",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              SizedBox(height: 1.5.h),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: teamNapsPage("menu","https://www.horseracing.net/tipsters/norwich-evening-news/steve-marriott","STEVE MARRIOTT")));
                },
                contentPadding: EdgeInsets.zero,
                tileColor: primaryWhite,
                leading: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Icons/user.png',
                  ),
                ),
                title: Text(
                  "STEVE MARRIOTT",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              SizedBox(height: 1.5.h),
              ListTile(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: teamNapsPage("menu","https://www.horseracing.net/tipsters/east-anglian-daily-times/dean-kilbryde","DEAN KILBRYDE")));
                },
                contentPadding: EdgeInsets.zero,
                tileColor: primaryWhite,
                leading: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Icons/user.png',
                  ),
                ),
                title: Text(
                  "DEAN KILBRYDE",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              SizedBox(height: 1.5.h),
              
              
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: teamNapsPage("menu","https://www.horseracing.net/naps-table","NAPS TABLE")));
                },
                child: Container(
                  height: 20.h,
                  decoration: BoxDecoration(color: primaryWhite, boxShadow: [
                    new BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 0,
                      color: Color.fromRGBO(0, 0, 0, 0.16),
                    )
                  ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'RACING  ',
                            style: TextStyle(
                              fontSize: medium,
                              color: primaryBlack,
                              fontFamily: "LeagueSpartan",
                            ),
                            children: <TextSpan>[
                              TextSpan(text: 'P'),
                              TextSpan(
                                  text: 'O',
                                  style: TextStyle(
                                      fontSize: medium,
                                      color: primaryRed,
                                      fontFamily: "LeagueSpartan")),
                              TextSpan(text: 'ST'),
                            ],
                          ),
                        ),
                        Text("See Racing Post NAP's Table",
                            style: TextStyle(
                                fontSize: small,
                                color: primaryBlack,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.5.h),
             /* Text(
                "RORY PADDOK",
                style: TextStyle(
                    fontSize: medium,
                    color: primaryBlack,
                    fontFamily: "LeagueSpartan"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  "Today's Nap",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: query.width,
                        color: primaryBlack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "15:55 Newmarket",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: query.width,
                        color: primaryWhite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset("Assets/Icons/12.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bahrain Pride",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    width: 35.w,
                                    child: Text(
                                      "Simon & Ed Crisford james Doyle",
                                      style: TextStyle(
                                          fontSize: small,
                                          color: primaryBlack,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 14.0, top: 8),
                              child: Text(
                                "2nd",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryBlack,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Naps States",
                  style: TextStyle(
                      fontSize: small,
                      color: primaryBlack,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: query.width,
                        color: primaryBlack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "ROI",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: query.width,
                        color: primaryWhite,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Level Stakes Profit:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "-£12.00",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Stakes:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "£12.00",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "ROI:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "-100.00 %",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: query.width,
                        color: primaryBlack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "STRIKE RATE",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: query.width,
                        color: primaryWhite,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Naps:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Non Runners:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Nap Winners:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Nap Losers:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Win Strike Rate:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "0.00 %",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: query.width,
                        color: primaryBlack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "ODDS",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: query.width,
                        color: primaryWhite,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Biggest Nap Odds Winners:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "25/1",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Biggest Nap Odds:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "40/1",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Shortest Nap Odds:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "2/5",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Median Nap Odds:",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Between 5/1 and 11/2",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),*/
            ],
          ),
        ),
      ),
    );
  }
}
