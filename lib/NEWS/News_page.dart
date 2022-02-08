import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:picksfromthepaddock/Controller/newsController.dart';
import 'package:picksfromthepaddock/Model/newsModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/SETUP/dashcontrol.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News_page extends StatefulWidget {
  var check;

  News_page(this.check);

  @override
  _News_pageState createState() => _News_pageState();
}

class _News_pageState extends State<News_page> with AutomaticKeepAliveClientMixin ,TickerProviderStateMixin{
  dashController dash = Get.find();
  int i = 0;

  Future<News> futurenews;
  final image = url.imageUrl;
  final NewsController newsController = NewsController();
  TabController _tabController;
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    futurenews = newsController.getnews();
    _tabController = new TabController(vsync: this, length: 3, initialIndex: i);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    setState(() {
      i = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 5,
        title: FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          padding: EdgeInsets.zero,
          onPressed: null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  if (widget.check == "menu") {
                    Navigator.pop(context);
                  } else {
                    dash.currentIndex.value = 0;
                  }
                },
                child: Image.asset(
                  "Assets/Icons/backBlack.png",
                  height: large,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  "NEWS",
                  style: TextStyle(
                      fontSize: large,
                      color: primaryRed,
                      fontFamily: "LeagueSpartan"),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/news1.png',
              width: 11.w,
            ),
          ),
        ],
        bottom: TabBar(
          onTap: (index) {
            setState(() {
              i = index;
              print(i.toString());
            });
          },
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                "Racing Post",
                style: TextStyle(
                    fontFamily: "SFPro",
                    fontWeight: FontWeight.w600,
                    color: i == 0 ? Colors.red : Colors.grey,
                    fontSize: small),
              ),
            ),
            Tab(
              child: Text(
                "At The Races",
                style: TextStyle(
                    fontFamily: "SFPro",
                    fontWeight: FontWeight.w600,
                    color: i == 1 ? Color(0xFF004D40) : Colors.grey,
                    fontSize: small),
              ),
            ),
            Tab(
              child: Text(
                "Racing TV",
                style: TextStyle(
                    fontFamily: "SFPro",
                    fontWeight: FontWeight.w600,
                    color: i == 2 ? Color(0xFFFF8F00) : Colors.grey,
                    fontSize: small),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            Container(
              child: WebView(
                initialUrl: 'https://twitter.com/racingpost',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Container(
              child: WebView(
                initialUrl: 'https://twitter.com/AtTheRaces',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Container(
              child: WebView(
                initialUrl: 'https://twitter.com/RacingTV',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ],
        ),
        // SingleChildScrollView(
        //   child: Container(
        //     color: backgroundColor,
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "LATEST RACING NEWS",
        //           maxLines: 1,
        //           style: TextStyle(
        //               color: primaryBlack,
        //               fontSize: large,
        //               fontFamily: "GlacialIndifference",
        //               fontWeight: FontWeight.w700),
        //         ),
        //         SizedBox(height: 2.h),
        //         Container(
        //           decoration: BoxDecoration(
        //               color: ctwitter,
        //               borderRadius: BorderRadius.only(
        //                   topLeft: Radius.circular(15.0),
        //                   topRight: Radius.circular(15.0))),
        //           height: query.height / 18,
        //           width: query.width,
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Image.asset(
        //               "Assets/Icons/twitter.png",
        //             ),
        //           ),
        //         ),
        //         FutureBuilder<News>(
        //           future: newsController.getnews(),
        //           builder: (context, snapshot) {
        //             if (snapshot.hasData) {
        //               return Container(
        //                 color: primaryWhite,
        //                 //height: query.height / 1.9,
        //                 child: ListView.separated(
        //                   physics: NeverScrollableScrollPhysics(),
        //                     shrinkWrap: true,
        //                     itemCount: snapshot.data.data.length,
        //                     separatorBuilder: (context, index) =>
        //                         Divider(height: 0.5.h, color: backgroundColor),
        //                     itemBuilder: (context, index) {
        //                       return ListTile(
        //                         tileColor: primaryWhite,
        //                         dense: true,
        //                         title: Padding(
        //                           padding: const EdgeInsets.only(top: 12.0),
        //                           child: Text(
        //                             snapshot.data.data[index].title,
        //                             style: TextStyle(
        //                                 color: primaryBlack,
        //                                 fontSize: medium,
        //                                 fontFamily: "GlacialIndifference",
        //                                 fontWeight: FontWeight.w700),
        //                           ),
        //                         ),
        //                         subtitle: Column(
        //                           crossAxisAlignment: CrossAxisAlignment.start,
        //                           children: [
        //                             Text(snapshot.data.data[index].twitterTag,
        //                               style: TextStyle(
        //                                   color: Colors.grey,
        //                                   fontSize: small,
        //                                   fontWeight: FontWeight.w400),
        //                             ),
        //                             SizedBox(height: 1.5.h),
        //                             Text(
        //                               snapshot.data.data[index].description,
        //                               maxLines: 2,
        //                               style: TextStyle(
        //                                   color: Colors.grey,
        //                                   fontSize: small,
        //                                   fontWeight: FontWeight.w400),
        //                             ),
        //                             Text(
        //                               snapshot.data.data[index].newsLink,
        //                               style: TextStyle(
        //                                   color: ctwitter,
        //                                   fontSize: small,
        //                                   fontWeight: FontWeight.w400),
        //                             ),
        //                             SizedBox(height: 1.5.h),
        //                             Text(
        //                               TimeAgo.timeAgoSinceDate(
        //                                   snapshot.data.data[index].createdAt),
        //                               maxLines: 2,
        //                               style: TextStyle(
        //                                   color: Colors.grey,
        //                                   fontSize: small,
        //                                   fontWeight: FontWeight.w400),
        //                             ),
        //                             SizedBox(height: 1.5.h),
        //                           ],
        //                         ),
        //                         leading: ClipRRect(
        //                             borderRadius: BorderRadius.circular(100.0),
        //                             child: FadeInImage(
        //                                 image: NetworkImage(image +
        //                                     snapshot.data.data[index].photo),
        //                                 fit: BoxFit.cover,
        //                                 width: 40.sp,
        //                                 height: 40.sp,
        //                                 placeholder: AssetImage(
        //                                     "Assets/Images/giphy2.gif"))),
        //                       );
        //                     }),
        //               );
        //             } else if (snapshot.hasError) {
        //               return Text('${snapshot.error}');
        //             } else {
        //               Text("No Data",
        //                   style: TextStyle(
        //                       color: primaryBlack,
        //                       fontSize: medium,
        //                       fontFamily: "GlacialIndifference",
        //                       fontWeight: FontWeight.w700));
        //             }
        //             return Container(
        //                 height: 25.h, child: Center(child: progressBar()));
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
//Kalpesh@201283
