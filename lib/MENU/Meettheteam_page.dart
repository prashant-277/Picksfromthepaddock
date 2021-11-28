import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Meettheteam_page extends StatefulWidget {
  var check;

  Meettheteam_page(this.check);

  @override
  _Meettheteam_pageState createState() => _Meettheteam_pageState();
}

class _Meettheteam_pageState extends State<Meettheteam_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "MEET THE TEAM",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/meet.png',
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
                  child: (Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          "Assets/Icons/meet2.png",
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
                              "Member name",
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
    );
  }
}
