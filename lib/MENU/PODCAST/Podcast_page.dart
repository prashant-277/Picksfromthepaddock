import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Controller/podcastController.dart';
import 'package:picksfromthepaddock/MENU/PODCAST/amazon.dart';
import 'package:picksfromthepaddock/MENU/PODCAST/iTunes.dart';
import 'package:picksfromthepaddock/MENU/PODCAST/podcastAudio.dart';
import 'package:picksfromthepaddock/MENU/PODCAST/spotify.dart';
import 'package:picksfromthepaddock/Model/podcastModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import 'package:picksfromthepaddock/url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Podcast_page extends StatefulWidget {
  var check;

  Podcast_page(this.check);

  @override
  _Podcast_pageState createState() => _Podcast_pageState();
}

class _Podcast_pageState extends State<Podcast_page> {
  FocusNode myFocusNode;
  final _formKey = GlobalKey<FormState>();
  Future<Podcast> futurePodcast;
  final PodcastController podcastController = PodcastController();
  final url1 = url.basicUrl;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  final FlutterWebviewPlugin webviewPlugin = new FlutterWebviewPlugin() ;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    futurePodcast = podcastController.getPodcast();
    myFocusNode = FocusNode();
  }
  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "PODCAST",
        widgets: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: MaterialButton(
          onPressed: () {
            webviewPlugin. hide() ;
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  String state_path;
                  return  Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 16,
                          child: Container(
                              height: Platform.isAndroid?62.h:64.h,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        "CONTACT THE SHOW",
                                        style: TextStyle(
                                            height: 2.0,
                                            color: primaryBlack,
                                            fontSize: large,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "A podcast is an episodic series of spoken-word digital audio files that a user can download to a personal device for easy listening.",
                                        style: TextStyle(
                                            height: 1.5,
                                            color: primaryBlack,
                                            fontSize: small,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 2.h),
                                      TextFormField(
                                        cursorColor: primaryBlack,
                                        controller: nameController,
                                        focusNode: myFocusNode,
                                        maxLines: 1,
                                        keyboardType: TextInputType.text,
                                        style: TextStyle(
                                            fontFamily: "GlacialIndifference",
                                            color: primaryBlack,
                                            fontSize: medium),
                                        decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8.0)),
                                                borderSide:
                                                BorderSide(color: backgroundColor, width: 1)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8.0)),
                                                borderSide:
                                                BorderSide(color: backgroundColor, width: 1)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8.0),
                                              borderSide: BorderSide(
                                                color: backgroundColor,
                                                width: 1.0,
                                              ),
                                            ),
                                            fillColor: grayInput,
                                            filled: true,
                                            hintText: "Name*",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: small,
                                              fontFamily: "GlacialIndifference",
                                            )),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please Enter Name';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 2.h),
                                      TextFormField(
                                        cursorColor: primaryBlack,
                                        controller: emailController,
                                        maxLines: 1,
                                        keyboardType: TextInputType.emailAddress,
                                        style: TextStyle(
                                            fontFamily: "GlacialIndifference",
                                            color: primaryBlack,
                                            fontSize: medium),
                                        decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8.0)),
                                                borderSide:
                                                BorderSide(color: backgroundColor, width: 1)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8.0)),
                                                borderSide:
                                                BorderSide(color: backgroundColor, width: 1)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8.0),
                                              borderSide: BorderSide(
                                                color: backgroundColor,
                                                width: 1.0,
                                              ),
                                            ),
                                            fillColor: grayInput,
                                            filled: true,
                                            hintText: "Email*",

                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: small,
                                              fontFamily: "GlacialIndifference",
                                            )),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please Enter Email';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 2.h),
                                      TextFormField(
                                        controller: messageController,
                                        cursorColor: primaryBlack,
                                        keyboardType: TextInputType.text,
                                        maxLines: query.height ~/ 200,
                                        // <--- maxLines
                                        style: TextStyle(
                                            fontFamily: "GlacialIndifference",
                                            color: primaryBlack,
                                            fontSize: medium),
                                        decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8.0)),
                                                borderSide:
                                                BorderSide(color: backgroundColor, width: 1)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(8.0)),
                                                borderSide:
                                                BorderSide(color: backgroundColor, width: 1)),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(8.0),
                                              borderSide: BorderSide(
                                                color: backgroundColor,
                                                width: 1.0,
                                              ),
                                            ),
                                            fillColor: grayInput,
                                            filled: true,
                                            hintText: "Message*",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: small,
                                              fontFamily: "GlacialIndifference",
                                            )),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please Enter Message';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 2.h),
                                      isLoading
                                          ? Center(
                                          child: Container(
                                              height: 20.sp,
                                              width: 20.sp,
                                              child: progressBar()))
                                          : Container(
                                        width: query.width,
                                        child: MaterialButton(
                                          height: 6.h,
                                          onPressed: () {
                                            if (_formKey.currentState.validate()) {
                                              contactTheShow(
                                                  nameController.text,
                                                  emailController.text,
                                                  messageController.text);
                                            }
                                          },
                                          color: primaryBlack,
                                          child: Text("SEND",
                                              style: TextStyle(
                                                  letterSpacing: 2,
                                                  color: primaryWhite,
                                                  fontSize: medium,
                                                  fontFamily: "GlacialIndifference",
                                                  fontWeight: FontWeight.w400)),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 1.h),
                                      Container(
                                        width: query.width,
                                        child: MaterialButton(
                                          height: 6.h,
                                          onPressed: () {
                                            webviewPlugin.show();
                                            Navigator.pop(context);
                                          },
                                          color: primaryRed,
                                          child: Text("Close",
                                              style: TextStyle(
                                                  letterSpacing: 2,
                                                  color: primaryWhite,
                                                  fontSize: medium,
                                                  fontFamily: "GlacialIndifference",
                                                  fontWeight: FontWeight.w400)),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        );

                });
          },
          color: primaryRed,
          child: Text("Contact Team",
              style: TextStyle(
                  letterSpacing:1,
                  color: primaryWhite,
                  fontSize: small,
                  fontFamily: "GlacialIndifference",
                  fontWeight: FontWeight.w400)),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
      ),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/podcast.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      //issue in iOS while using WebView not showing content , Android works fine
        //using WebviewScaffold works in both but UI part not ok.
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:Platform.isAndroid?140:160,bottom: 0),
              child: Container(
                height:Platform.isAndroid? MediaQuery.of(context).size.height-210: MediaQuery.of(context).size.height-275,
                child: WebviewScaffold(
                  url: "https://feeds.buzzsprout.com/735545.rss",
                  // appBar: AppBar(
                  //   title: const Text(''),
                  //   backgroundColor: backgroundColor,
                  //   leading: Text(""),
                  //   elevation: 0,
                  //   toolbarHeight: 12.0.h,
                  // ),
                ),
              ),
            ),
          ],
        ),
      )
        // WebView(
        //   initialUrl: 'https://feeds.buzzsprout.com/735545.rss',
        //   javascriptMode: JavascriptMode.disabled
        // ),

      /*Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          height: query.height,
          width: query.width,
          color: backgroundColor,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LATEST EPISODES",
                    maxLines: 1,
                    style: TextStyle(
                        color: primaryBlack,
                        fontSize: large,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w700),
                  ),
                  FutureBuilder<Podcast>(
                    future: podcastController.getPodcast(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Container(
                          //height: query.height * 0.6,
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: snapshot.data.data.length,
                              separatorBuilder: (context, index) => Divider(
                                  height: 1.5.h, color: backgroundColor),
                              itemBuilder: (context, index) {
                                return Container(
                                  width: query.width,
                                  color: primaryBlack,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade,
                                              alignment: Alignment.bottomCenter,
                                              duration: Duration(milliseconds: 300),
                                              child: podcastAudio(index)));
                                    },
                                    child: (Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "Assets/Icons/img3.png",
                                          height: 85.sp,
                                          fit: BoxFit.fill,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: query.width * 0.65,
                                              child: Text(
                                                snapshot.data.data[index].title,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    color: primaryWhite,
                                                    fontSize: 12.sp,
                                                    fontFamily:
                                                        "GlacialIndifference",
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5.0),
                                              child: Container(
                                                width: 50.w,
                                                child: Text(
                                                    snapshot.data.data[index]
                                                        .description,
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        color: primaryWhite,
                                                        fontSize: small,
                                                        fontFamily:
                                                            "GlacialIndifference",
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                                  ),
                                );
                              }),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      } else {
                        Text("No Data",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: medium,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w700));
                      }
                      return Container(
                          height: 25.h, child: Center(child: progressBar()));
                    },
                  ),
                  SizedBox(height: 2.h),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: spotify()));
                    },
                    color: Color(0xff1bb31b),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "Assets/Icons/fb1.png",
                            height: 5.h,
                            color: Colors.transparent,
                          ),
                        ),
                        Text("SPOTIFY",
                            style: TextStyle(
                                letterSpacing: 2,
                                color: primaryWhite,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "Assets/Icons/spotify.png",
                            height: 4.h,
                          ),
                        ),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: iTunes()));
                    },
                    color: Color(0xffe71441),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "Assets/Icons/itunes.png",
                            height: 5.h,
                            color: Colors.transparent,
                          ),
                        ),
                        Text("ITUNES",
                            style: TextStyle(
                                letterSpacing: 2,
                                color: primaryWhite,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "Assets/Icons/itunes.png",
                            height: 4.h,
                          ),
                        ),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              alignment: Alignment.bottomCenter,
                              duration: Duration(milliseconds: 300),
                              child: amazon()));
                    },
                    color: Color(0xffff8b00),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "Assets/Icons/amazon.png",
                            height: 5.h,
                            color: Colors.transparent,
                          ),
                        ),
                        Text("AMAZON MUSIC",
                            style: TextStyle(
                                letterSpacing: 2,
                                color: primaryWhite,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            "Assets/Icons/amazon.png",
                            height: 4.h,
                          ),
                        ),
                      ],
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "CONTACT THE SHOW",
                    style: TextStyle(
                        height: 2.0,
                        color: primaryBlack,
                        fontSize: large,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "A podcast is an episodic series of spoken-word digital audio files that a user can download to a personal device for easy listening.",
                    style: TextStyle(
                        height: 1.5,
                        color: primaryBlack,
                        fontSize: small,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    cursorColor: primaryBlack,
                    controller: nameController,
                    focusNode: myFocusNode,
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        fontFamily: "GlacialIndifference",
                        color: primaryBlack,
                        fontSize: medium),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: backgroundColor,
                            width: 1.0,
                          ),
                        ),
                        fillColor: grayInput,
                        filled: true,
                        hintText: "Name*",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: small,
                          fontFamily: "GlacialIndifference",
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    cursorColor: primaryBlack,
                    controller: emailController,
                    maxLines: 1,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        fontFamily: "GlacialIndifference",
                        color: primaryBlack,
                        fontSize: medium),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: backgroundColor,
                            width: 1.0,
                          ),
                        ),
                        fillColor: grayInput,
                        filled: true,
                        hintText: "Email*",

                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: small,
                          fontFamily: "GlacialIndifference",
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 2.h),
                  TextFormField(
                    controller: messageController,
                    cursorColor: primaryBlack,
                    keyboardType: TextInputType.text,
                    maxLines: query.height ~/ 200,
                    // <--- maxLines
                    style: TextStyle(
                        fontFamily: "GlacialIndifference",
                        color: primaryBlack,
                        fontSize: medium),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(color: backgroundColor, width: 1)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            color: backgroundColor,
                            width: 1.0,
                          ),
                        ),
                        fillColor: grayInput,
                        filled: true,
                        hintText: "Message*",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: small,
                          fontFamily: "GlacialIndifference",
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Message';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 2.h),
                  isLoading
                      ? Center(
                          child: Container(
                              height: 20.sp,
                              width: 20.sp,
                              child: progressBar()))
                      : Container(
                          width: query.width,
                          child: MaterialButton(
                            height: 8.h,
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                contactTheShow(
                                    nameController.text,
                                    emailController.text,
                                    messageController.text);
                              }
                            },
                            color: primaryBlack,
                            child: Text("SEND",
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: primaryWhite,
                                    fontSize: medium,
                                    fontFamily: "GlacialIndifference",
                                    fontWeight: FontWeight.w400)),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ),
        ),
      ),*/
    );
  }

  Future<void> contactTheShow(String name, String email, String message) async {
    setState(() {
      isLoading = true;
    });
    var url = "$url1/contact-the-show";

    var map = new Map<String, dynamic>();
    map["name"] = name;
    map["email"] = email;
    map["message"] = message;

    final response = await http.post(Uri.parse(url), body: map);

    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
        nameController.clear();
        emailController.clear();
        messageController.clear();
        myFocusNode.requestFocus();
      });

      customSnackbar.buildErrorSnackbar(context, "Success");

      return jsonDecode(response.body);
    } else {
      customSnackbar.buildErrorSnackbar(context, "Please try again!");
      setState(() {
        isLoading = false;
      });
    }
  }
}
