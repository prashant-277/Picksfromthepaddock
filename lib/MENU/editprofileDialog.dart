import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class editprofileDialog extends StatefulWidget {
  @override
  _editprofileDialogState createState() => _editprofileDialogState();
}

class _editprofileDialogState extends State<editprofileDialog> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Container(
        //height: query.height * 0.5,
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Edit Profile",
                    style: TextStyle(
                        fontFamily: "SFPro",
                        fontWeight: FontWeight.w700,
                        color: cBlack,
                        fontSize: medium)),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
                iconSize: 20.sp,
              )
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: primaryRed, width: 2),
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
              Positioned(
                right: 2.sp,
                  bottom: 4.sp,
                  child: Image.asset(
                "Assets/Icons/edit.png",
                height: 3.h,
              ))
            ],
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
                          fontSize: small)),
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
                          fontSize: small)),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          InkWell(
            onTap: () {
              Navigator.pop(context);
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
                  "Save",
                  style: TextStyle(
                    height: 1.2.sp,
                    color: primaryWhite,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference",
                  ),
                ),
              ),
            ),
          ),
          Text("")
        ],
      ),
    ));
  }
}
