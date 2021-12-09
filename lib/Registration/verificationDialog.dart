import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Registration/resetpassword.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class verificationDialog extends StatefulWidget {
  @override
  _verificationDialogState createState() => _verificationDialogState();
}

class _verificationDialogState extends State<verificationDialog> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        width: query.width / 1,
        height: query.height * 0.3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 0.5.h),
              Image.asset(
                "Assets/Icons/success.png",
                height: 8.h,
                width: 8.h,
              ),

              Text("Verification Success",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "GlacialIndifference",
                      height: 1.5,
                      color: cBlack,
                      fontSize: medium)),
              Text("Verification is success and now you can reset the password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "GlacialIndifference",
                      height: 1.5,
                      color: cBlack,
                      fontSize: medium)),
              SizedBox(height: 1.h),
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                alignment: Alignment.bottomCenter,
                duration: Duration(milliseconds: 300),
                child: resetpassword()));
      },
    );
  }
}
