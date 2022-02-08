import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:sizer/sizer.dart';

class iTunes extends StatefulWidget {


  @override
  _iTunesState createState() => _iTunesState();
}

class _iTunesState extends State<iTunes> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: true,
        appBar: AppBar(),
        headerText: "iTunes",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/itunes.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(

          initialUrl: 'https://podcasts.apple.com/gb/podcast/turf-talk-podcast/id1321633643',
          javascriptMode: JavascriptMode.unrestricted,


        ),
      ),
    );
  }
}
