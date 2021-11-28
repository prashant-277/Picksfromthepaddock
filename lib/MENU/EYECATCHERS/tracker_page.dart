import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class tracker_page extends StatefulWidget {
  var check;

  tracker_page(this.check);

  @override
  _tracker_pageState createState() => _tracker_pageState();
}

class _tracker_pageState extends State<tracker_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "TRACKER",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/eye_catcher.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Text(
                "Get free email reminders for our eye chatchers",
                style: TextStyle(
                    height: 1.2.sp,
                    color: primaryBlack,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 2.h),
              Text(
                "Get free email reminders for our eye chatchers. Get free email reminders for our eye chatchers Get free email reminders.",
                style: TextStyle(
                    height: 1.2.sp,
                    color: primaryBlack,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 3.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryWhite,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 2.h),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        cursorColor: primaryBlack,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            fontFamily: "GlacialIndifference", color: primaryBlack, fontSize: medium),
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: backgroundColor,
                                width: 1.0,
                              ),
                            ),
                            fillColor: grayInput,
                            filled: true,
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: small,
                              fontFamily: "GlacialIndifference",
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        cursorColor: primaryBlack,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            fontFamily: "GlacialIndifference", color: primaryBlack, fontSize: medium),
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: backgroundColor,
                                width: 1.0,
                              ),
                            ),
                            fillColor: grayInput,
                            filled: true,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: small,
                              fontFamily: "GlacialIndifference",
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: primaryBlack,
                        ),
                        height: query.height * 0.06,
                        width: query.width,
                        child: Center(
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(
                                height: 1.2.sp,
                                color: primaryWhite,
                                fontSize: medium,
                                letterSpacing: 2,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
