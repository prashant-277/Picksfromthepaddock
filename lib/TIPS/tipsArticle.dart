import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Controller/tipsController.dart';
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
import 'package:picksfromthepaddock/Model/tipsModel.dart';
import 'package:picksfromthepaddock/NEWS/News_page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:share/share.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:transparent_image/transparent_image.dart';

class tipsArticle extends StatefulWidget {
  int index;

  tipsArticle(this.index);

  @override
  _tipsArticleState createState() => _tipsArticleState();
}

class _tipsArticleState extends State<tipsArticle> {
  final image = url.imageUrl;

  final TipsController tips_ctrl = TipsController();

  @override
  void initState() {
    super.initState();
    tips_ctrl.getTips();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: true,
        appBar: AppBar(),
        headerText: "TIPS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/tops.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: FutureBuilder<Tips>(
            future: tips_ctrl.getTips(),
            builder: (context, snapshot) {

              if (snapshot.hasData) {
                DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse( snapshot.data.data[widget.index].createdAt.toString());
                print(tempDate.day.toString());
                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        snapshot.data.data[widget.index].title,
                        maxLines: 1,
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: 12.sp,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: FadeInImage.memoryNetwork(
                        image: image + snapshot.data.data[widget.index].photo,
                        fit: BoxFit.fill,
                        placeholder: kTransparentImage,
                        width: query.width,
                        imageErrorBuilder: (context, url, error) => Container(
                          height: 35.h,
                          width: query.width,
                          child: Icon(
                            Icons.error,
                            color: primaryRed,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          tempDate.day.toString()+"-"+tempDate.month.toString()+"-"+tempDate.year.toString() +" - " +snapshot.data.data[widget.index].place,
                          maxLines: 1,
                          style: TextStyle(
                              color: primaryBlack,
                              fontSize: 12.sp,
                              fontFamily: "GlacialIndifference",
                              fontWeight: FontWeight.w700),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        snapshot.data.data[widget.index].description,
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: 12.sp,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        snapshot.data.data[widget.index].horseInfo.horseName,
                        maxLines: 1,
                        style: TextStyle(
                            color: primaryRed,
                            fontSize: 12.sp,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "Written by : ${snapshot.data.data[widget.index].writtenBy}",
                        maxLines: 1,
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: 12.sp,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Share.share(
                              "https://play.google.com/store",
                              subject: 'Sharing store link',
                            );
                          },
                          color: cFacebook,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "Assets/Icons/fb1.png",
                                  height: 2.h,
                                ),
                              ),
                              Text("Share on facebook",
                                  style: TextStyle(
                                      color: primaryWhite,
                                      fontSize: small,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Share.share(
                              "https://play.google.com/store",
                              subject: 'Sharing store link',
                            );
                          },
                          color: ctwitter,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  "Assets/Icons/twitter.png",
                                  height: 2.h,
                                ),
                              ),
                              Text("Share on twitter",
                                  style: TextStyle(
                                      color: primaryWhite,
                                      fontSize: small,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
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
                              child: Image.asset("Assets/Icons/slide1.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide8.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide5.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide4.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide3.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide7.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide2.png",
                                  width: 70.w)),
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
                              child: Image.asset("Assets/Icons/slide6.png",
                                  width: 70.w)),
                          SizedBox(width: 5.w),
                        ],
                      ),
                    ),
                    Container(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        spacing: 35.0,
                        runSpacing: 15.0,
                        direction: Axis.horizontal,
                        children: [
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
                                width: 22.w),
                          ),
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
                              child: Image.asset("Assets/Icons/result.png",
                                  width: 22.w)),
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
                              child: Image.asset("Assets/Icons/news1.png",
                                  width: 22.w)),
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
                                width: 22.w),
                          ),
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
                                width: 22.w),
                          ),
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
                                width: 22.w),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    )
                  ],
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
              return Center(child: progressBar());
            },
          )),
    );
  }
}
