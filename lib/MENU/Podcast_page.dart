import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Podcast_page extends StatefulWidget {
  var check;

  Podcast_page(this.check);

  @override
  _Podcast_pageState createState() => _Podcast_pageState();
}

class _Podcast_pageState extends State<Podcast_page> {
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
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/podcast.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          height: query.height,
          width: query.width,
          color: backgroundColor,
          child: SingleChildScrollView(
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
                Container(
                  height: query.height*0.6,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          Divider(height: 1.5.h, color: backgroundColor),
                      itemBuilder: (context, index) {
                        return Container(
                                width: query.width,
                                color: primaryBlack,
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
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: query.width * 0.65,
                                          child: Text(
                                            "Turf Talk Podcast - Episod $index",
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: primaryWhite,
                                                fontSize: 12.sp,
                                                fontFamily: "GlacialIndifference",
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Container(
                                            width: 50.w,
                                            child: Text(
                                                "Wednesday flat racing tips flat racing tips Wednesday flat racing tips",
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: primaryWhite,
                                                    fontSize: small,
                                                    fontFamily:
                                                        "GlacialIndifference",
                                                    fontWeight: FontWeight.w400)),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                              );
                      }),
                ),
                SizedBox(height: 2.h),
                MaterialButton(
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      fontFamily: "GlacialIndifference", color: primaryBlack, fontSize: medium),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide:
                              BorderSide(color: backgroundColor, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                      hintText: "Name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: small,
                        fontFamily: "GlacialIndifference",
                      )),
                ),
                SizedBox(height: 2.h),
                TextFormField(
                  cursorColor: primaryBlack,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                      fontFamily: "GlacialIndifference", color: primaryBlack, fontSize: medium),
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide:
                          BorderSide(color: backgroundColor, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: small,
                        fontFamily: "GlacialIndifference",
                      )),
                ),
                SizedBox(height: 2.h),
                TextFormField(
                  cursorColor: primaryBlack,
                  keyboardType: TextInputType.text,
                  maxLines: query.height ~/ 200,  // <--- maxLines
                  style: TextStyle(
                      fontFamily: "GlacialIndifference", color: primaryBlack, fontSize: medium),
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide:
                          BorderSide(color: backgroundColor, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                      hintText: "Message",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: small,
                        fontFamily: "GlacialIndifference",
                      )),
                ),
                SizedBox(height: 2.h),
                Container(
                  width: query.width,
                  child: MaterialButton(
                    height: 8.h,
                    onPressed: () {},
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
    );
  }
}
