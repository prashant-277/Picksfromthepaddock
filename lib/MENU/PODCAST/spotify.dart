import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:sizer/sizer.dart';
class spotify extends StatefulWidget {

  @override
  _spotifyState createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: true,
        appBar: AppBar(),
        headerText: "Spotify",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/spotify.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'https://open.spotify.com/show/7H7iHD226zjMC4U9L6JZfe',
          javascriptMode: JavascriptMode.unrestricted,


        ),
      ),
    );
  }
}
