import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Result_page extends StatefulWidget {
  var check;

  Result_page(this.check);

  @override
  _Result_pageState createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "RESULTS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/result.png',
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
                  return ListTile(
                    tileColor: primaryWhite,
                    dense: true,
                    title: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        "10.45 Jabel Ali",
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: medium,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Container(
                            color: grayInput,
                            height: 0.2.h,
                          ),
                        ),
                        Container(
                          width: query.width,
                          child: Row(
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                color: primaryRed,
                                child: Center(
                                  child: Text(
                                    "1st",
                                    style: TextStyle(
                                        color: primaryWhite,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Container(width: 2.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 15.sp,
                                        width: 15.sp,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: primaryBlack,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                                color: primaryWhite,
                                                fontSize: small,
                                                fontFamily:
                                                    "GlacialIndifference",
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Container(width: 2.w),
                                      Text(
                                        "Martial Art",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: medium,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: query.width / 1.5,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "10-1",
                                          style: TextStyle(
                                              height: 0.2.h,
                                              color: primaryBlack,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Ghodayer / R Ffrench",
                                          style: TextStyle(
                                              color: primaryRed,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Container(
                          width: query.width,
                          child: Row(
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                color: primaryRed,
                                child: Center(
                                  child: Text(
                                    "1st",
                                    style: TextStyle(
                                        color: primaryWhite,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Container(width: 2.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 15.sp,
                                        width: 15.sp,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          color: primaryBlack,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                                color: primaryWhite,
                                                fontSize: small,
                                                fontFamily:
                                                "GlacialIndifference",
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Container(width: 2.w),
                                      Text(
                                        "Martial Art",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: medium,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: query.width / 1.5,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "10-1",
                                          style: TextStyle(
                                              height: 0.2.h,
                                              color: primaryBlack,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Ghodayer / R Ffrench",
                                          style: TextStyle(
                                              color: primaryRed,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Container(
                          width: query.width,
                          child: Row(
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                color: primaryRed,
                                child: Center(
                                  child: Text(
                                    "1st",
                                    style: TextStyle(
                                        color: primaryWhite,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Container(width: 2.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 15.sp,
                                        width: 15.sp,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          color: primaryBlack,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                                color: primaryWhite,
                                                fontSize: small,
                                                fontFamily:
                                                "GlacialIndifference",
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                      Container(width: 2.w),
                                      Text(
                                        "Martial Art",
                                        style: TextStyle(
                                            color: primaryBlack,
                                            fontSize: medium,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: query.width / 1.5,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "10-1",
                                          style: TextStyle(
                                              height: 0.2.h,
                                              color: primaryBlack,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Ghodayer / R Ffrench",
                                          style: TextStyle(
                                              color: primaryRed,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                      ],
                    ),
                  );
                }),
          )),
    );
  }
}
