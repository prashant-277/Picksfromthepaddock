import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Video_page extends StatefulWidget {
  var check;

  Video_page(this.check);

  @override
  _Video_pageState createState() => _Video_pageState();
}

class _Video_pageState extends State<Video_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "VIDEOS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/video.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (context, index) =>
                  Divider(height: 1.5.h, color: backgroundColor),
              itemBuilder: (context, index) {
                return Container(
                  width: query.width,
                  color: primaryWhite,
                  child: (
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          "Assets/Icons/2.png",
                          height: 75.sp,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: query.width * 0.65,
                            child: Text(
                              "Turf Talk Podcast - Episod $index",
                              maxLines: 1,
                              style: TextStyle(
                                  color: primaryBlack,
                                  fontSize: 12.sp,
                                  fontFamily: "GlacialIndifference",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Container(
                              width: 50.w,
                              child: Text(
                                  "45:53",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: primaryBlack,
                                      fontSize: small,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Container(
                              width: 50.w,
                              child: Text(
                                  "3 week ago",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: primaryBlack,
                                      fontSize: small,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                );
              }),
        ),
      ),
    );
  }
}
