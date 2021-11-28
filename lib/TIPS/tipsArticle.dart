import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class tipsArticle extends StatefulWidget {
  const tipsArticle({Key key}) : super(key: key);

  @override
  _tipsArticleState createState() => _tipsArticleState();
}

class _tipsArticleState extends State<tipsArticle> {
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                "Wednesday flat racing tips",
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
              child: Image.asset("Assets/Icons/img1.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                "13:05 Nottingham",
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
              child: Text(
                "Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys (or sometimes driven without riders) over a set distance, for competition. It is one of the most ancient of all sports, as its basic premise – to identify which of two or more horses is the fastest over a set course or distance – has been unchanged since at least classical antiquity Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys (or sometimes driven without riders) over a set distance, for competition. It is one of the most ancient of all sports, as its basic premise – to identify which of two or more horses is the fastest over a set course or distance – has been unchanged since at least classical antiquity Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys (or sometimes driven without riders) over a set distance, for competition. It is one of the most ancient of all sports, as its basic premise – to identify which of two or more horses is the fastest over a set course or distance – has been unchanged since at least classical antiquity",
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
                "KALAHARI PRICE(WIN)",
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
                "Writtern by : Tom Bates",
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
                  onPressed: () {},
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
                  onPressed: () {},
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
            Container(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 35.0,
                runSpacing: 15.0,
                direction: Axis.horizontal,
                children: [
                  Image.asset("Assets/Icons/race_card.png", width: 22.w),
                  Image.asset("Assets/Icons/result.png", width: 22.w),
                  Image.asset("Assets/Icons/news1.png", width: 22.w),
                  Image.asset("Assets/Icons/commentary.png", width: 22.w),
                  Image.asset("Assets/Icons/compitition.png", width: 22.w),
                  Image.asset("Assets/Icons/eye_catcher.png", width: 22.w),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            )
          ],
        ),
      ),
    );
  }
}
