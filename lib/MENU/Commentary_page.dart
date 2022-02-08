import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Commentary_page extends StatefulWidget {
  var check;

  Commentary_page(this.check);

  @override
  _Commentary_pageState createState() => _Commentary_pageState();
}

class _Commentary_pageState extends State<Commentary_page> {
  int isplay = 0;

  var ratingStar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();

  }
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "LIVE RACE COMMENTARY",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/commentary.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'https://streema.com/radios/William_Hill_Racing_Radio',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
      /*Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "Assets/Icons/img2.png",
                      height: query.height / 4.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: query.height / 4.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Radio name",
                                    style: TextStyle(
                                        color: primaryBlack,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700)),
                                Text("Station name",
                                    style: TextStyle(
                                        height: 1.5,
                                        color: primaryBlack,
                                        fontSize: small,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rating",
                                    style: TextStyle(
                                        height: 1.5,
                                        color: primaryBlack,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700)),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemSize: 18.sp,
                                  itemCount: 5,
                                  updateOnDrag: true,
                                  itemPadding: EdgeInsets.all(3),
                                  itemBuilder: (context, index) =>
                                      Image.asset("Assets/Icons/star.png"),
                                  onRatingUpdate: (rating) {
                                    setState(() {
                                      ratingStar = rating;
                                    });
                                  },
                                ),
                                Text(ratingStar.toString() + "/5",
                                    style: TextStyle(
                                        color: primaryBlack,
                                        fontSize: small,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            Text("")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Generes",
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                            color: grayInput,
                            borderRadius: BorderRadius.all(Radius.circular(100))),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Racing",
                              style: TextStyle(
                                  fontFamily: "GlacialIndifference",
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: primaryBlack),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 4.h,
                        decoration: BoxDecoration(
                            color: grayInput,
                            borderRadius: BorderRadius.all(Radius.circular(100))),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Horse Racing",
                              style: TextStyle(
                                  fontFamily: "GlacialIndifference",
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  color: primaryBlack),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Contact",
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700)),
                ),
                Row(
                  children: [
                    Image.asset("Assets/Icons/fb3.png", height: 3.h),
                    SizedBox(width: 5.w),
                    Image.asset("Assets/Icons/insta.png", height: 3.h),
                    SizedBox(width: 5.w),
                    Image.asset("Assets/Icons/tweeter2.png", height: 3.h),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Description",
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                      "Lorem Ipsum has been the industry's standard dummy text ever.",
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w400)),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: query.height * 0.08,
        color: primaryRed,
        width: query.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset("Assets/Icons/livecomm.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Radio name",
                          style: TextStyle(
                              color: primaryWhite,
                              fontSize: medium,
                              fontFamily: "GlacialIndifference",
                              fontWeight: FontWeight.w700)),
                      Text("Station name",
                          style: TextStyle(
                              color: primaryWhite,
                              fontSize: medium,
                              fontFamily: "GlacialIndifference",
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (isplay == 0) {
                    isplay = 1;
                  } else {
                    isplay = 0;
                  }
                });
              },
              icon: Image.asset(
                isplay == 0 ? "Assets/Icons/paus.png" : "Assets/Icons/play.png",
              ),
              iconSize: 40.sp,
            ),
          ],
        ),
      ),*/
    );
  }
}
