import 'dart:async';

import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Competition_page extends StatefulWidget {
  var check;

  Competition_page(this.check);


  @override
  _Competition_pageState createState() => _Competition_pageState();
}

class _Competition_pageState extends State<Competition_page> {

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "COMPETITION",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/compitition.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'https://www.picksfromthepaddock.co.uk/4forascore',
          javascriptMode: JavascriptMode.unrestricted,


        ),
      ),
    );
  }
}
