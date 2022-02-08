import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class teamNapsPage extends StatefulWidget {
  String name,url,check;

  teamNapsPage(this.check, this.url, this.name);


  @override
  _teamNapsPageState createState() => _teamNapsPageState();
}

class _teamNapsPageState extends State<teamNapsPage> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: widget.name,
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/compitition.png',
              width: 11.w,
              color: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
