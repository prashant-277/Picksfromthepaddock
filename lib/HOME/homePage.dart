import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Controller/tipsController.dart';
import 'package:picksfromthepaddock/MENU/Chat_page.dart';
import 'package:picksfromthepaddock/MENU/Commentary_page.dart';
import 'package:picksfromthepaddock/MENU/Competition_page.dart';
import 'package:picksfromthepaddock/MENU/EYECATCHERS/EyeCatchers_page.dart';
import 'package:picksfromthepaddock/MENU/PODCAST/Podcast_page.dart';
import 'package:picksfromthepaddock/MENU/RaceCard_page.dart';
import 'package:picksfromthepaddock/MENU/Result_page.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/dailyTeamNaps.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/horsetofollow.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/informJockys.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/informTrainers.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/longestTraeller.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/marketMovers.dart';
import 'package:picksfromthepaddock/MENU/STATISTIS/silkMagazine.dart';
import 'package:picksfromthepaddock/MENU/Statistics_page.dart';
import 'package:picksfromthepaddock/MENU/VIDEO/Video_page.dart';
import 'package:picksfromthepaddock/Model/tipsModel.dart';
import 'package:picksfromthepaddock/NEWS/News_page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/TIPS/Tips_page.dart';
import 'package:picksfromthepaddock/TIPS/tipsArticle.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:transparent_image/transparent_image.dart';

class homepage extends StatefulWidget {
  const homepage({Key key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final image = url.imageUrl;

  Future<Tips> futureTips;
  final TipsController tips_ctrl = TipsController();

  @override
  void initState() {
    super.initState();
    futureTips = tips_ctrl.getTips();
  }

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
            FutureBuilder<Tips>(
              future: tips_ctrl.getTips(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    color: primaryWhite,
                    height: query.height * 0.30,
                    width: query.width,
                    child: CarouselSlider.builder(
                        scrollDirection: Axis.horizontal,
                        enableAutoSlider: false,
                        autoSliderDelay: Duration(seconds: 3),
                        autoSliderTransitionTime: Duration(milliseconds: 500),
                        unlimitedMode: true,
                        slideBuilder: (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      alignment: Alignment.bottomCenter,
                                      duration: Duration(milliseconds: 300),
                                      child: tipsArticle(index)));
                            },
                            child: Container(
                                color: primaryBlack,
                                width: query.width,
                                height: query.height,
                                alignment: Alignment.center,
                                child: Stack(
                                  children: [
                                    FadeInImage.memoryNetwork(
                                      image: image +
                                          snapshot.data.data[index].photo,
                                      fit: BoxFit.cover,
                                      height: query.height * 0.30,
                                      width: query.width,
                                      placeholder: kTransparentImage,
                                      imageErrorBuilder:
                                          (context, url, error) => Container(
                                        height: query.height * 0.30,
                                        child: Icon(
                                          Icons.error,
                                          color: primaryRed,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: query.height * 0.38,
                                      width: query.width * 0.42,
                                      color: Colors.black45,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 30, right: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              snapshot.data.data[index].title,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: primaryWhite,
                                                  fontSize: header,
                                                  fontFamily:
                                                      "GlacialIndifference",
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height: 0.5.h,
                                            ),
                                            Text(
                                              snapshot
                                                  .data.data[index].description,
                                              maxLines: 5,
                                              style: TextStyle(
                                                  height: 0.15.h,
                                                  color: primaryWhite,
                                                  fontSize: medium,
                                                  fontFamily:
                                                      "GlacialIndifference",
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          );
                        },
                        slideIndicator: CircularSlideIndicator(
                            padding: EdgeInsets.only(bottom: 10.sp),
                            currentIndicatorColor: primaryRed,
                            indicatorBackgroundColor: grayInput,
                            itemSpacing: 8.sp,
                            indicatorRadius: 3.0.sp,
                            alignment: Alignment.bottomCenter),
                        itemCount: 5),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                } else {
                  Text("No Data",
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: medium,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700));
                }
                return Container(
                    height: query.height * 0.30,
                    child: Center(child: progressBar()));
              },
            ),
            Container(
              height: query.height * 0.12,
              color: primaryBlack,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 2.w),
                  Tooltip(
                    message: "Tips",
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: Tips_page("menu")));
                        },
                        child:
                            Image.asset("Assets/Icons/tops.png", width: 16.w)),
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "News",
                    child: InkWell(
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
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Podcast",
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: Podcast_page("menu")));
                        },
                        child: Image.asset("Assets/Icons/podcast.png",
                            width: 16.w)),
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Video",
                    child: InkWell(
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
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Race cards",
                    child: InkWell(
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
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Results",
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: Result_page("menu")));
                        },
                        child: Image.asset("Assets/Icons/result.png",
                            width: 16.w)),
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Commentary",
                    child: InkWell(
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
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Eye Catchers",
                    child: InkWell(
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
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Chat",
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: Chat_page("menu")));
                        },
                        child:
                            Image.asset("Assets/Icons/chat.png", width: 16.w)),
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Competition",
                    child: InkWell(
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
                  ),
                  SizedBox(width: 3.w),
                  Tooltip(
                    message: "Statistics",
                    child: InkWell(
                        onTap: () {Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: Statistics_page("menu")));
                          // Navigator.of(context, rootNavigator: true).push(
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             Statistics_page("menu")));
                        },
                        child: Image.asset("Assets/Icons/statistic.png",
                            width: 16.w)),
                  ),
                  SizedBox(width: 3.w),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: Commentary_page("menu")));
                      },
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
