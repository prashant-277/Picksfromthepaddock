import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
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
              height: query.height * 0.13,
              color: primaryBlack,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 2.w),
                  Image.asset("Assets/Icons/tops.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/news1.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/podcast.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/video.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/race_card.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/result.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/commentary.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/eye_catcher.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/chat.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/compitition.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/statistic.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/contact.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/meet.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/join.png", width: 16.w),
                  SizedBox(width: 3.w),
                  Image.asset("Assets/Icons/settings.png", width: 16.w),
                  SizedBox(width: 3.w),
                ],
              ),
            ),
            Container(
              width: query.width,
              height: query.height * 0.13,
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
              height: query.height * 0.24,
              color: backgroundColor,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 2.w),
                  Image.asset("Assets/Icons/slide1.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide2.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide3.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide4.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide5.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide6.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide7.png", width: 70.w),
                  SizedBox(width: 5.w),
                  Image.asset("Assets/Icons/slide8.png", width: 70.w),
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
