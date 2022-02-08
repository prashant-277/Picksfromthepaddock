import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Twitter_page extends StatefulWidget {

  @override
  _Twitter_pageState createState() => _Twitter_pageState();
}

class _Twitter_pageState extends State<Twitter_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Container(
      height: query.height,
      width: query.width,
      child: WebView(
        initialUrl: 'https://twitter.com/pickspaddock',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
