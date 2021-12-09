import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Registration/forgotpassword.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/SETUP/dashboard_page.dart';
import 'package:picksfromthepaddock/WIDGET/textfield.dart';
import 'package:sizer/sizer.dart';

class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController name_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  bool show1 = true;

  void onTap1() {
    show1 = !show1;
    setState(() {});
  }

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
        title: Row(
          children: [
            Image.asset(
              'Assets/Icons/back.png',
              width: 15.0,
              height: 15.0,
            ),
            Text(
              "Sign in",
              style: TextStyle(
                  fontSize: medium,
                  color: cwhite,
                  fontFamily: "GlacialIndifference",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Image.asset(
              "Assets/Images/logo1.png",
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  textfield(
                    controller: name_controller,
                    obscureText: false,
                    hintText: "Email",
                    textcapitalization: TextCapitalization.none,
                    functionValidate: commonValidation,
                    prefixIcon: new IconButton(
                      icon: new Image.asset(
                        'Assets/Icons/email.png',
                        width: 15.0,
                        height: 15.0,
                        color: cBlack,
                      ),
                      onPressed: null,
                    ),
                    parametersValidate: "Please enter email",
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 1.5.h),
                  textfield(
                    controller: password_controller,
                    obscureText: show1,
                    hintText: "Password",
                    textcapitalization: TextCapitalization.none,
                    functionValidate: commonValidation,
                    suffixIcon: IconButton(
                      color: grayInput,
                      icon: !show1
                          ? Image.asset(
                              'Assets/Icons/visible.png',
                              width: 20.0,
                              height: 20.0,
                            )
                          : Image.asset(
                              'Assets/Icons/invisible.png',
                              width: 20.0,
                              height: 20.0,
                            ),
                      onPressed: () {
                        onTap1();
                      },
                    ),
                    prefixIcon: IconButton(
                      icon: new Image.asset(
                        'Assets/Icons/password.png',
                        width: 15.0,
                        height: 15.0,
                        color: cBlack,
                      ),
                      onPressed: null,
                    ),
                    parametersValidate: "Please enter new password",
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 3.h),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: dashboard_page()));
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
                          "Sign in",
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
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        alignment: Alignment.bottomCenter,
                        duration: Duration(milliseconds: 300),
                        child: forgotpassword()));
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: cwhite,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference"),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(
                        color: cwhite,
                        fontSize: medium,
                        fontFamily: "GlacialIndifference"),
                    text: "Don't have an account?",
                  ),
                  WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    style: TextStyle(
                        color: primaryRed,
                        fontSize: medium,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w700),
                    text: "Sign up",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Navigator.pop(context);
                      },
                  ),
                ],
              ),
            ),
            Container(
              height: query.height * 0.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Image.asset(
                      "Assets/Icons/loginwith.png",
                      height: 15.sp,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Image.asset("Assets/Icons/facebook.png",
                              height: 50.sp),
                          onTap: () {},
                        ),
                        SizedBox(width: 10.sp),
                        InkWell(
                          child: Image.asset("Assets/Icons/google.png",
                              height: 50.sp),
                          onTap: () {},
                        ),
                        SizedBox(width: 10.sp),
                        InkWell(
                            child: Image.asset("Assets/Icons/twitterlogin.png",
                                height: 50.sp),
                            onTap: () async {
                              {}
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text("")
          ],
        ),
      ),
    );
  }
}
