import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
class longestTraeller extends StatefulWidget {
  var check;

  longestTraeller(this.check);



  @override
  _longestTraellerState createState() => _longestTraellerState();
}

class _longestTraellerState extends State<longestTraeller> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "LONGEST TRAVELLERS",
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
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [

              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: query.width,
                        color: grayInput,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "DISTANCE",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryBlack,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "HOME",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryBlack,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "TRACK",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryBlack,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "TIME",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryBlack,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: primaryWhite,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Kerry Lee",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryRed,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "44 %",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
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
                            SizedBox(height: 1.h)
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
