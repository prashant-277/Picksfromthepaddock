import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';


class Settings_page extends StatefulWidget {
  var check;

  Settings_page(this.check);


  @override
  _Settings_pageState createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "SETTINGS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/settings.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
