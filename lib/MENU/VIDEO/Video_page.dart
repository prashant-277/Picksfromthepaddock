import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/Controller/videoController.dart';
import 'package:picksfromthepaddock/MENU/VIDEO/videoPlayScreen.dart';
import 'package:picksfromthepaddock/Model/videoModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Video_page extends StatefulWidget {
  var check;

  Video_page(this.check);

  @override
  _Video_pageState createState() => _Video_pageState();
}

class _Video_pageState extends State<Video_page> {
  final image = url.imageUrl;
  Future<Video> futurevideo;

  final VideoController videoController = VideoController();

  @override
  void initState() {
    super.initState();
    futurevideo = videoController.getVideo();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "VIDEOS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/video.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'https://www.youtube.com/channel/UC6tjNnuAnZfkPVMDCXDw-rg/videos',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
      /*Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder<Video>(
            future: videoController.getVideo(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemCount: snapshot.data.data.length,
                    separatorBuilder: (context, index) =>
                        Divider(height: 1.5.h, color: backgroundColor),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  actionsPadding: EdgeInsets.zero,
                                  insetPadding: EdgeInsets.all(15.0),
                                  contentPadding: EdgeInsets.all(0),
                                  backgroundColor: cwhite,
                                  content: videoPlayScreen(index)));
                        },
                        child: Container(
                          width: query.width,
                          color: primaryWhite,
                          child: (Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      image + snapshot.data.data[index].photo,
                                  placeholder: (context, url) => Center(
                                      child: Image.asset(
                                    "Assets/Images/giphy2.gif",
                                    height: 5.h,
                                    width: 5.h,
                                  )),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.error,
                                    color: Colors.white,
                                  ),
                                  height: 75.sp,
                                  width: 75.sp,
                                  fit: BoxFit.fill,
                                ),

                                *//*Image.network(
                                      image + snapshot.data.data[index].photo,
                                      height: 75.sp,
                                      width: 75.sp,
                                      fit: BoxFit.fill,
                                    ),*//*
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: query.width * 0.65,
                                    child: Text(
                                      snapshot.data.data[index].title,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: primaryBlack,
                                          fontSize: 12.sp,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      width: 50.w,
                                      child: Text(snapshot.data.data[index].videoDuration,
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: primaryBlack,
                                              fontSize: small,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      width: 50.w,
                                      child: Text(
                                          TimeAgo.timeAgoSinceDate(snapshot.data.data[index].createdAt) ,
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: primaryBlack,
                                              fontSize: small,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                        ),
                      );
                    });
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
              return Center(child: progressBar());
            },
          ),
        ),
      ),*/
    );
  }
}
