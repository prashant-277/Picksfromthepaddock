import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class RaceCard_page extends StatefulWidget {
  var check;

  RaceCard_page(this.check);

  @override
  _RaceCard_pageState createState() => _RaceCard_pageState();
}

class _RaceCard_pageState extends State<RaceCard_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: BaseAppBar(
          imageBack: widget.check == "menu" ? true : false,
          appBar: AppBar(),
          headerText: "RACE CARDS",
          widgets: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                'Assets/Icons/race_card.png',
                width: 11.w,
              ),
            ),
          ],
        ),
        body: Container(
            height: query.height,
            width: query.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 10,
                  separatorBuilder: (context, index) =>
                      Divider(height: 2.h, color: backgroundColor),
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Container(
                            width: query.width,
                            height: 6.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryBlack),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                      "Racecards for Friday 29 October, 2021",
                                      style: TextStyle(
                                          color: primaryWhite,
                                          fontSize: small,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                          )
                        : ListTile(
                            tileColor: primaryWhite,
                            dense: true,
                            title: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Row(
                                children: [
                                  Text(
                                    "DOWN ROYAL",
                                    style: TextStyle(
                                        color: primaryBlack,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "(United Kingdom)",
                                    style: TextStyle(
                                        color: primaryBlack,
                                        fontSize: small,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Course details",
                                  style: TextStyle(
                                      height: 1.5,
                                      color: primaryRed,
                                      fontSize: small,
                                      //fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0),
                                  child: Container(
                                    color: grayInput,
                                    height: 0.1.h,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1.10",
                                      style: TextStyle(
                                          color: primaryRed,
                                          fontSize: small,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Container(width: 2.w),
                                    Container(
                                      width: query.width * 0.6,
                                      child: Text(
                                        "Lorem Ipsum has been the industry's standard dummy text.",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: small,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Image.asset(
                                      "Assets/Icons/imgcards.png",
                                      height: 7.h,
                                    )
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1.10",
                                      style: TextStyle(
                                          color: primaryRed,
                                          fontSize: small,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Container(width: 2.w),
                                    Container(
                                      width: query.width * 0.6,
                                      child: Text(
                                        "Lorem Ipsum has been the industry's standard dummy text.",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: small,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1.10",
                                      style: TextStyle(
                                          color: primaryRed,
                                          fontSize: small,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Container(width: 2.w),
                                    Container(
                                      width: query.width * 0.6,
                                      child: Text(
                                        "Lorem Ipsum has been the industry's standard dummy text.",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: small,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1.10",
                                      style: TextStyle(
                                          color: primaryRed,
                                          fontSize: small,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Container(width: 2.w),
                                    Container(
                                      width: query.width * 0.6,
                                      child: Text(
                                        "Lorem Ipsum has been the industry's standard dummy text.",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: small,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                              ],
                            ),
                          );
                  }),
            )));
  }
}
