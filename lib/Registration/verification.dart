import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Registration/verificationDialog.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class verification extends StatefulWidget {
  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
  var userotp;

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: cBlack,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: cBlack,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Image.asset(
                'Assets/Icons/back.png',
                width: 15.0,
                height: 15.0,
              ),
              Text(
                "Verification",
                style: TextStyle(
                    fontSize: medium,
                    color: cwhite,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "Assets/Icons/verify.png",
                height: 18.h,
              ),
              Text("Please input your verification number",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "GlacialIndifference",
                      height: 1.5,
                      color: cwhite,
                      fontSize: medium)),
              Container(
                width: query.width / 1.75,
                height: query.height / 13,
                child: OTPTextField(

                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 40,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "GlacialIndifference",
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceBetween,
                  fieldStyle: FieldStyle.box,
                  keyboardType: TextInputType.number,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                    setState(() {
                      userotp = pin;
                    });
                  },
                ),
              ),
              Text("Didn't receive verification code?",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "GlacialIndifference",
                      height: 1.5,
                      color: cwhite,
                      fontSize: medium)),
              Text("Resend the code",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "GlacialIndifference",
                      height: 1.5,
                      color: primaryRed,
                      fontSize: medium)),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          actionsPadding: EdgeInsets.zero,
                          insetPadding: EdgeInsets.all(30.0),
                          contentPadding: EdgeInsets.all(0),
                          backgroundColor: cwhite,
                          content: verificationDialog()));
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
                      "Confirm",
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
              Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
