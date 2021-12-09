import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Jointheteam_page extends StatefulWidget {
  var check;

  Jointheteam_page(this.check);

  @override
  _Jointheteam_pageState createState() => _Jointheteam_pageState();
}

class _Jointheteam_pageState extends State<Jointheteam_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "JOIN THE TEAM",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/join.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: query.height,
          width: query.width,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "Assets/Icons/join.png",
                  height: 15.h,
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Please fill in the form below :",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400)),
                        SizedBox(height: 1.h),
                        TextFormField(
                          cursorColor: primaryBlack,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "GlacialIndifference",
                              color: primaryBlack,
                              fontSize: medium),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
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
                        SizedBox(height: 1.h),
                        TextFormField(
                          cursorColor: primaryBlack,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "GlacialIndifference",
                              color: primaryBlack,
                              fontSize: medium),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: backgroundColor,
                                  width: 1.0,
                                ),
                              ),
                              fillColor: grayInput,
                              filled: true,
                              hintText: "Phone",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                              )),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          cursorColor: primaryBlack,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "GlacialIndifference",
                              color: primaryBlack,
                              fontSize: medium),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: backgroundColor,
                                  width: 1.0,
                                ),
                              ),
                              fillColor: grayInput,
                              filled: true,
                              hintText: "Country",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                              )),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          cursorColor: primaryBlack,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "GlacialIndifference",
                              color: primaryBlack,
                              fontSize: medium),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      color: backgroundColor, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: backgroundColor,
                                  width: 1.0,
                                ),
                              ),
                              fillColor: grayInput,
                              filled: true,
                              hintText: "Language",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                              )),
                        ),
                        SizedBox(height: 1.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
