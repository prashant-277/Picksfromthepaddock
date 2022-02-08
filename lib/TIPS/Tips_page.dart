import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/SETUP/dashcontrol.dart';
import 'package:picksfromthepaddock/TIPS/tipsArticle.dart';
import 'package:picksfromthepaddock/Controller/tipsController.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';

import '../Model/tipsModel.dart';

class Tips_page extends StatefulWidget {
  var check;

  Tips_page(this.check);

  @override
  _Tips_pageState createState() => _Tips_pageState();
}

class _Tips_pageState extends State<Tips_page> {
  dashController dash = Get.find();
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
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 5,
        title: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: EdgeInsets.zero,
          onPressed: null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  if (widget.check == "menu") {
                    Navigator.pop(context);
                  } else {
                    dash.currentIndex.value = 0;
                  }
                },
                child: Image.asset(
                  "Assets/Icons/backBlack.png",
                  height: large,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "TIPS",
                  style: TextStyle(
                      fontSize: large,
                      color: primaryRed,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/tops.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        child: FutureBuilder<Tips>(
          future: tips_ctrl.getTips(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: snapshot.data.data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 0.0, bottom: 8.0),
                        child: Container(
                          width: query.width,
                          color: primaryBlack,
                          child: (Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        image + snapshot.data.data[index].photo,
                                    placeholder: (context, url) => Center(
                                        child: Image.asset(
                                      "Assets/Images/giphy2.gif",
                                      height: 5.h,
                                      width: 5.h,
                                    )),
                                    errorWidget: (context, url, error) => Icon(
                                      Icons.error,
                                      color: Colors.white,
                                    ),
                                    height: 85.sp,
                                    width: 110.sp,
                                    fit: BoxFit.fill,
                                  ),
                                  Container(
                                    height: 85.sp,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            width: 60.sp,
                                            child: Text(
                                              snapshot.data.data[index].title,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: primaryBlack,
                                                  backgroundColor: primaryWhite,
                                                  fontSize: 15.sp,
                                                  fontFamily:
                                                      "GlacialIndifference",
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 70.sp,
                                            color: primaryRed,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15.0),
                                              child: Center(
                                                child: Text(
                                                  snapshot
                                                      .data.data[index].writtenBy,
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: primaryWhite,
                                                      fontSize: 8.sp,
                                                      fontFamily:
                                                          "GlacialIndifference",
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: query.width * 0.55,
                                      child: Text(
                                        snapshot.data.data[index].title,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: primaryWhite,
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
                                            snapshot
                                                .data.data[index].description,
                                            maxLines: 2,
                                            style: TextStyle(
                                                color: primaryWhite,
                                                fontSize: small,
                                                fontFamily:
                                                    "GlacialIndifference",
                                                fontWeight: FontWeight.w400)),
                                      ),
                                    ),
                                    Container(
                                      width: 52.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                      child:
                                                          tipsArticle(index)));
                                            },
                                            color: primaryRed,
                                            padding: EdgeInsets.zero,
                                            child: Text("Read more",
                                                style: TextStyle(
                                                    color: primaryWhite,
                                                    fontSize: small,
                                                    fontFamily:
                                                        "GlacialIndifference",
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            height: 3.h,
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                        ));
                  });
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
        ),
      ),
    );
  }
}
