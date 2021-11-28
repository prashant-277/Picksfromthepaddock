import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/HOME/homePage.dart';
import 'package:picksfromthepaddock/MENU/Menu_page.dart';
import 'package:picksfromthepaddock/NEWS/News_page.dart';
import 'package:picksfromthepaddock/TIPS/Tips_page.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
class page extends StatelessWidget {
  final String title;

  const page({Key key, this.title})
      : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: showPage(title.toString()),
      ),
    );
  }

  Widget showPage(title) {
    if (title.toString() == "HOME") {
      return Container(
        child: homepage(),
      );
    } else if (title.toString() == "TIPS") {
      return Container(

        child: Tips_page(""),
      );
    } else if (title.toString() == "NEWS") {
      return Container(

        child: News_page(""),
      );
    } else if (title.toString() == "FACEBOOK") {
      return Container(
       // child: Community_page(),
      );
    } else if (title.toString() == "TWITTER") {
      return Container(
       // child: Profile_page(),
      );
    }else if(title.toString() == "MENU"){
      return Container(

        child: Menu_page(),
      );
    }
  }

  Widget showlastIcon(String title, BuildContext context) {
    if (title == "HOME") {
      return Container();
    } else if (title == "TIPS") {
      return Container();
    } else if (title == "NEWS") {
      return Container();
    } else if (title == "FACEBOOK") {
      return Container();
    } else if (title == "TWITTER") {
      return Container();
    }else if(title == "MENU"){
      return Container();
    }
  }
}
