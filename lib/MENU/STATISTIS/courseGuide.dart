import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class courseGuide extends StatefulWidget {
  var check;

  courseGuide(this.check);

  @override
  _courseGuideState createState() => _courseGuideState();
}

class _courseGuideState extends State<courseGuide> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "A - Z COURSE GUIDE",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/statistic.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: primaryWhite,
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.all(10),
                  child: Text(
                    "Horse racing is an equestrian performance sport, typically involving two or more horses ridden",
                    style: TextStyle(
                        color: primaryBlack,
                        fontSize: 12.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.all(10),
                  child: Image.asset("Assets/Icons/img1.png"),
                ),
                Padding(
                  padding:
                  const EdgeInsets.all(10),
                  child: Text(
                    "Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys (or sometimes driven without riders) over a set distance, for competition. It is one of the most ancient of all sports, as its basic premise – to identify which of two or more horses is the fastest over a set course or distance – has been unchanged since at least classical antiquity Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys (or sometimes driven without riders) over a set distance, for competition. It is one of the most ancient of all sports, as its basic premise – to identify which of two or more horses is the fastest over a set course or distance – has been unchanged since at least classical antiquity Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys (or sometimes driven without riders) over a set distance, for competition. It is one of the most ancient of all sports, as its basic premise – to identify which of two or more horses is the fastest over a set course or distance – has been unchanged since at least classical antiquity",
                    style: TextStyle(
                        color: primaryBlack,
                        fontSize: 12.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
