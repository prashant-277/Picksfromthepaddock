import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class News_page extends StatefulWidget {
  var check;

  News_page(this.check);



  @override
  _News_pageState createState() => _News_pageState();
}

class _News_pageState extends State<News_page> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      appBar: BaseAppBar(
        imageBack: widget.check=="menu"?true: false,
        appBar: AppBar(),
        headerText: "NEWS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/news1.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: SingleChildScrollView(
          child: Container(
            color: backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LATEST RACING NEWS",
                  maxLines: 1,
                  style: TextStyle(
                      color: primaryBlack,
                      fontSize: large,
                      fontFamily: "GlacialIndifference",
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                      color: ctwitter,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0))),
                  height: query.height / 18,
                  width: query.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "Assets/Icons/twitter.png",
                    ),
                  ),
                ),
                Container(
                  color: primaryWhite,
                  height: query.height / 1.9,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 10,
                      separatorBuilder: (context, index) =>
                          Divider(height: 0.5.h, color: backgroundColor),
                      itemBuilder: (context, index) {
                        return ListTile(
                          tileColor: primaryWhite,
                          dense: true,
                          title: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              "All The Races",
                              style: TextStyle(
                                  color: primaryBlack,
                                  fontSize: medium,
                                  fontFamily: "GlacialIndifference",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "@AllTheRaces",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: small,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 1.5.h),
                              Text(
                                "Horse racing is an equestrian performance sport, typically involving two or more horses ridden by jockeys over a set distance",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: small,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "https://bitly.com",
                                style: TextStyle(
                                    color: ctwitter,
                                    fontSize: small,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 1.5.h),
                              Text(
                                "2 minutes ago",
                                maxLines: 2,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: small,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 1.5.h),
                            ],
                          ),
                          leading: Image.asset("Assets/Icons/img.png"),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//Kalpesh@201283
