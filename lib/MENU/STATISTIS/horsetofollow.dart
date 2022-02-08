import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class horsetofollow extends StatefulWidget {
  var check;

  horsetofollow(this.check);

  @override
  _horsetofollowState createState() => _horsetofollowState();
}

class _horsetofollowState extends State<horsetofollow> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "HORSES TO FOLLOW",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/follow.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'https://www.picksfromthepaddock.co.uk/online-store',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
      /*Container(
          height: query.height,
          width: query.width,
          child: Image.asset(
            "Assets/Icons/imghorses.png",
            fit: BoxFit.fill,
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: primaryRed,
            ),
            height: query.height * 0.07,
            width: query.width,
            child: Center(
              child: Text(
                "CLICK HERE",
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
      ),*/
    );
  }
}
