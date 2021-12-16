import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:sizer/sizer.dart';

import 'Registration/signUp.dart';
import 'SETUP/dashboard_page.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      body: AnimatedSplashScreen(
          centered: true,
          splashIconSize: MediaQuery.of(context).size.height,
          duration: 2000,
          backgroundColor: primaryBlack,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(""),
              Image.asset(
                "Assets/Images/logo1.png",
                height: 15.h,
              ),
              ShowUpAnimation(
                delayStart: Duration(milliseconds: 1000),
                animationDuration: Duration(milliseconds: 1000),
                curve: Curves.bounceIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: Image.asset(
                  "Assets/Icons/center_text.png",
                  height: 35.h,
                ),
              ),
              Text(""),
              ShowUpAnimation(
                delayStart: Duration(milliseconds: 1500),
                animationDuration: Duration(milliseconds: 1500),
                curve: Curves.bounceIn,
                direction: Direction.vertical,
                offset: 0.5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Image.asset(
                    "Assets/Icons/bottom_text.png",
                    width: 70.w,
                  ),
                ),
              ),
            ],
          ),
          pageTransitionType: PageTransitionType.fade,
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: dashboard_page()
          //signUp()
      ),
    );
  }
}
