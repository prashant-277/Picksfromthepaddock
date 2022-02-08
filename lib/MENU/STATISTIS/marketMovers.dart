import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class marketMovers extends StatefulWidget {
  var check;

  marketMovers(this.check);

  @override
  _marketMoversState createState() => _marketMoversState();
}

class _marketMoversState extends State<marketMovers> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "MARKET MOVERS",
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
        child: WebView(
          initialUrl: 'http://icard.gbiracing.com/steamers',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
      //http://icard.gbiracing.com/steamers
      /*Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: primaryWhite),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10),
                  child: Text(
                    "1.55 Newmarket",
                    maxLines: 1,
                    style: TextStyle(
                        color: primaryRed,
                        fontSize: 12.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Sports British EBF Conditions Stakes C13 £8,910",
                    maxLines: 1,
                    style: TextStyle(
                        color: primaryBlack,
                        fontSize: 12.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 0.1.h,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("Assets/Icons/mm1.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "3",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Spycatcher",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "9/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 5/2 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 11/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 3/1 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("Assets/Icons/mm3.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "2",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Inver Park",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "9/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 5/2 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 11/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 3/1 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("Assets/Icons/mm2.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "2",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Inver Park",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "9/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 5/2 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 11/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 3/1 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("Assets/Icons/mm4.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "2",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Inver Park",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "9/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 5/2 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 11/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 3/1 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("Assets/Icons/mm5.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "2",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Inver Park",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "9/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 5/2 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 11/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 3/1 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("Assets/Icons/mm6.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "2",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Inver Park",
                            maxLines: 1,
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "9/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 5/2 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: primaryRed,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 11/4 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " > ",
                            style: TextStyle(
                                color: cgreen,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " 3/1 ",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: 12.sp,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),

                  ],
                )
              ],
            ),
          ),
        ),
      ),*/
    );
  }
}
