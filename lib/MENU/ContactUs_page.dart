import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class ContactUs_page extends StatefulWidget {
  var check;

  ContactUs_page(this.check);

  @override
  _ContactUs_pageState createState() => _ContactUs_pageState();
}

class _ContactUs_pageState extends State<ContactUs_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "CONTACT US",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/contact.png',
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
                Image.asset("Assets/Icons/contact.png",
                height: 20.h,),
                SizedBox(height: 2.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email address*",
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: small,
                            fontWeight: FontWeight.w600)),
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
                              borderSide:
                                  BorderSide(color: backgroundColor, width: 1)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide:
                                  BorderSide(color: backgroundColor, width: 1)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: backgroundColor,
                              width: 1.0,
                            ),
                          ),
                          fillColor: primaryWhite,
                          filled: true,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: small,
                            fontFamily: "GlacialIndifference",
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Comment*",
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: small,
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 1.h),
                    TextFormField(
                      cursorColor: primaryBlack,
                      keyboardType: TextInputType.text,
                      maxLines: query.height ~/ 200,
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
                              borderSide:
                                  BorderSide(color: backgroundColor, width: 1)),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              borderSide:
                                  BorderSide(color: backgroundColor, width: 1)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: backgroundColor,
                              width: 1.0,
                            ),
                          ),
                          fillColor: primaryWhite,
                          filled: true,
                          hintText: "Type here...",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: small,
                            fontFamily: "GlacialIndifference",
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
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
                        "SEND",
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
      ),
    );
  }
}
