import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class informTrainers extends StatefulWidget {
  var check;

  informTrainers(this.check);

  @override
  _informTrainersState createState() => _informTrainersState();
}

class _informTrainersState extends State<informTrainers> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "IN - FORM TRAINERS",
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
              Text(
                "Trainers with the best strike rate from at least 2 wins in the last 14 days.",
                style: TextStyle(
                    color: primaryBlack,
                    fontSize: 12.sp,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        width: query.width,
                        color: primaryBlack,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "TRAINER",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "WINS",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "RUNS",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "STRIKE RATE",
                                style: TextStyle(
                                    fontSize: small,
                                    color: primaryWhite,
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
