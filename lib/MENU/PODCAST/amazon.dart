import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:sizer/sizer.dart';
class amazon extends StatefulWidget {

  @override
  _amazonState createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: true,
        appBar: AppBar(),
        headerText: "Amazon Music",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/amazon.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'https://music.amazon.com/podcasts/e4ddfcce-ec69-4c9b-b730-bc422c61ec5d/turf-talk-podcast',
          javascriptMode: JavascriptMode.unrestricted,


        ),
      ),
    );
  }
}
