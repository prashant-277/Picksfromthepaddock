import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Facebook_page extends StatefulWidget {

  @override
  _Facebook_pageState createState() => _Facebook_pageState();
}

class _Facebook_pageState extends State<Facebook_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Container(
      height: query.height,
      width: query.width,
      child: WebView(
        initialUrl: 'https://www.facebook.com/PicksPaddock/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
