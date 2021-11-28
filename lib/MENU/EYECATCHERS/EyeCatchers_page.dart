import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/MENU/EYECATCHERS/tracker_page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class EyeCatchers_page extends StatefulWidget {
  var check;

  EyeCatchers_page(this.check);

  @override
  _EyeCatchers_pageState createState() => _EyeCatchers_pageState();
}

class _EyeCatchers_pageState extends State<EyeCatchers_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "EYE CATCHERS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/eye_catcher.png',
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
                return index == 0
                    ? Text(
                        "Horse to track in your trackers",
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: medium,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w400),
                      )
                    : Container(
                        width: query.width,
                        color: primaryWhite,
                        child: (Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                "Assets/Icons/2.png",
                                height: query.height * 0.18,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Horse name",
                                    style: TextStyle(
                                        height: 1.2.sp,
                                        color: primaryBlack,
                                        fontSize: medium,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Container(
                                    width: query.width * 0.5,
                                    child: Text(
                                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                                      maxLines: 5,
                                      style: TextStyle(
                                          color: primaryBlack,
                                          fontSize: medium,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                      );
              }),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    alignment: Alignment.bottomCenter,
                    duration: Duration(milliseconds: 300),
                    child: tracker_page("menu")));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: primaryRed,
            ),
            height: query.height * 0.06,
            width: query.width,
            child: Center(
              child: Text(
                "TRACKER",
                style: TextStyle(
                    height: 1.2.sp,
                    color: primaryWhite,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
