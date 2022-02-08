import 'dart:io';

import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Chat_page extends StatefulWidget {
  var check;

  Chat_page(this.check);

  @override
  _Chat_pageState createState() => _Chat_pageState();
}

class _Chat_pageState extends State<Chat_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "RACING CHAT",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/chat.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Column(
            children: [
              Text(
                  "Got a few tips you want to share or want to debate the latest racing news?",
                  style: TextStyle(
                      color: primaryBlack,
                      fontSize: large,
                      fontFamily: "GlacialIndifference",
                      fontWeight: FontWeight.w700)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                child: InkWell(
                  onTap: _launchWAPPURL,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: primaryWhite),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "Assets/Icons/wp.png",
                          height: 13.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Container(
                          child: Text("JOIN OUR EXCLUSIVE \nWHATSAPP GROUP",
                              style: TextStyle(
                                  color: primaryBlack,
                                  fontSize: small,
                                  fontFamily: "GlacialIndifference",
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                child: InkWell(
                  onTap: _launchFBURL,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: primaryWhite),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "Assets/Icons/fb2.png",
                          height: 13.h,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Container(
                          child: Text(
                              "JOIN OUR FACEBOOK GROUP \n'LETS TALK RACING'",
                              style: TextStyle(
                                  color: primaryBlack,
                                  fontSize: small,
                                  fontFamily: "GlacialIndifference",
                                  fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _launchWAPPURL() async {
    if (!await launch("https://chat.whatsapp.com/BNI1dPfkexaGu11AHA8Tkv"))
      throw 'Could not launch url please, Check internet connection';
  }

  void _launchFBURL() async {
    String fbProtocolUrl;
    if (Platform.isIOS) {
      fbProtocolUrl = 'fb://profile/PicksPaddock';
    } else {
      fbProtocolUrl = 'fb://page/PicksPaddock';
    }

    String fallbackUrl = 'https://www.facebook.com/PicksPaddock/';

    try {
      bool launched = await launch(fbProtocolUrl, forceSafariVC: false);

      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false);
    }
  }
}
