import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/MENU/changepasswordDialog.dart';
import 'package:picksfromthepaddock/MENU/editprofileDialog.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Profile_page extends StatefulWidget {
  var check;

  Profile_page(this.check);

  @override
  _Profile_pageState createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "MY PROFILE",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/profile.png',
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
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryRed, width: 3),
                      borderRadius: BorderRadius.circular(100.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "Assets/Icons/img.png",
                          height: 12.h,
                        )),
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  height: 45.sp,
                  width: query.width,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: grayInput, width: 1),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 10),
                        child: Image.asset(
                          "Assets/Icons/user1.png",
                          width: 5.w,
                        ),
                      ),
                      Container(
                        width: 200.sp,
                        child: Text("Robert Downey",
                            style: TextStyle(
                                fontFamily: "SFPro",
                                fontWeight: FontWeight.w400,
                                color: cBlack,
                                fontSize: medium)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Container(
                  height: 45.sp,
                  width: query.width,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: grayInput, width: 1),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 10),
                        child: Image.asset(
                          "Assets/Icons/email.png",
                          width: 5.w,
                        ),
                      ),
                      Container(
                        width: 200.sp,
                        child: Text("robertdowney@gmail.com",
                            style: TextStyle(
                                fontFamily: "SFPro",
                                fontWeight: FontWeight.w400,
                                color: cBlack,
                                fontSize: medium)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            actionsPadding: EdgeInsets.zero,
                            insetPadding: EdgeInsets.all(15.0),
                            contentPadding: EdgeInsets.all(0),
                            backgroundColor: cwhite,
                            content: editprofileDialog()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: cBlack,
                    ),
                    height: query.height * 0.07,
                    width: query.width,
                    child: Center(
                      child: Text(
                        "EDIT PROFILE",
                        style: TextStyle(
                          letterSpacing: 2.sp,
                          color: primaryWhite,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            actionsPadding: EdgeInsets.zero,
                            insetPadding: EdgeInsets.all(15.0),
                            contentPadding: EdgeInsets.all(0),
                            backgroundColor: cwhite,
                            content: changepasswordDialog()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: primaryRed,
                    ),
                    height: query.height * 0.07,
                    width: query.width,
                    child: Center(
                      child: Text(
                        "CHANGE PASSWORD",
                        style: TextStyle(
                          letterSpacing: 2.sp,
                          color: primaryWhite,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      height: 1.8.sp,
                      color: primaryRed,
                      fontWeight: FontWeight.w700,
                      fontSize: medium,
                      fontFamily: "GlacialIndifference",
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
