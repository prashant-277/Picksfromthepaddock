import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/MENU/Chat_page.dart';
import 'package:picksfromthepaddock/MENU/Commentary_page.dart';
import 'package:picksfromthepaddock/MENU/Competition_page.dart';
import 'package:picksfromthepaddock/MENU/ContactUs_page.dart';
import 'package:picksfromthepaddock/MENU/EYECATCHERS/EyeCatchers_page.dart';
import 'package:picksfromthepaddock/MENU/Jointheteam_page.dart';
import 'package:picksfromthepaddock/MENU/Meettheteam_page.dart';
import 'package:picksfromthepaddock/MENU/Podcast_page.dart';
import 'package:picksfromthepaddock/MENU/Profile_page.dart';
import 'package:picksfromthepaddock/MENU/RaceCard_page.dart';
import 'package:picksfromthepaddock/MENU/Result_page.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/dailyTeamNaps.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/horsetofollow.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/informJockys.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/informTrainers.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/longestTraeller.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/marketMovers.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/silkMagazine.dart';
import 'package:picksfromthepaddock/MENU/Settings_page.dart';
import 'package:picksfromthepaddock/MENU/Statistics_page.dart';
import 'package:picksfromthepaddock/MENU/Video_page.dart';
import 'package:picksfromthepaddock/NEWS/News_page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/TIPS/Tips_page.dart';
import 'package:sizer/sizer.dart';

class homepage extends StatefulWidget {
  const homepage({Key key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Container(
      color: backgroundColor,
      height: query.height,
      width: query.width,
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 0.5.h,
              color: backgroundColor,
            ),
            Container(
              color: primaryBlack,
              height: query.height * 0.28,
              child: Container(
                height: query.height * 0.28,
                width: query.width,
                child: CarouselSlider.builder(
                    scrollDirection: Axis.horizontal,
                    enableAutoSlider: false,
                    unlimitedMode: false,
                    slideBuilder: (index) {
                      return Container(
                          width: query.width,
                          height: query.height,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "Assets/Icons/slider.png",
                            fit: BoxFit.cover,
                          ));
                    },
                    //slideTransform: CubeTransform(),
                    slideIndicator: CircularSlideIndicator(
                        padding: EdgeInsets.only(bottom: 10.sp),
                        currentIndicatorColor: primaryRed,
                        indicatorBackgroundColor: primaryWhite,
                        itemSpacing: 12.sp,
                        indicatorRadius: 4.sp),
                    itemCount: 5),
              ),
            ),
            Container(
              height: 0.5.h,
              color: backgroundColor,
            ),
            Container(
              height: query.height * 0.12,
              color: primaryBlack,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 2.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Tips_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/tops.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: News_page("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/news1.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Podcast_page("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/podcast.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Video_page("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/video.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: RaceCard_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/race_card.png",
                          width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Result_page("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/result.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Commentary_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/commentary.png",
                          width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: EyeCatchers_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/eye_catcher.png",
                          width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Chat_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/chat.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Competition_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/compitition.png",
                          width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Statistics_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/statistic.png",
                          width: 16.w)),
                  SizedBox(width: 3.w),
                  /*InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: ContactUs_page("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/contact.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Meettheteam_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/meet.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Jointheteam_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/join.png", width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Settings_page("menu")));
                      },
                      child: Image.asset("Assets/Icons/settings.png",
                          width: 16.w)),
                  SizedBox(width: 3.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Profile_page("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/profile.png", width: 16.w)),
                  SizedBox(width: 3.w),*/
                ],
              ),
            ),
            Container(
              width: query.width,
              height: query.height * 0.12,
              color: primaryWhite,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "Assets/Icons/horses.png",
                      width: 40.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "LIVE RACE \n COMMENTARY",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 0.18.h,
                            fontFamily: "GlacialIndifference",
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w700,
                            color: primaryBlack),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: primaryRed,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      child:
                          Text("LISTEN NOW", style: TextStyle(fontSize: 8.sp)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: query.height * 0.23,
              color: backgroundColor,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 2.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: dailyTeamNaps("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide1.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {},
                      child:
                          Image.asset("Assets/Icons/slide8.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: marketMovers("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide5.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: longestTraeller("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide4.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: informJockys("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide3.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: informTrainers("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide7.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: horsetofollow("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide2.png", width: 70.w)),
                  SizedBox(width: 5.w),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: silkMagazine("menu")));
                      },
                      child:
                          Image.asset("Assets/Icons/slide6.png", width: 70.w)),
                  SizedBox(width: 5.w),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
