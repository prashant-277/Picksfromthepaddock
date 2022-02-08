import 'package:cached_network_image/cached_network_image.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/Controller/videoController.dart';
import 'package:picksfromthepaddock/Model/videoModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:video_player/video_player.dart';

class videoPlayScreen extends StatefulWidget {
  int index;
  videoPlayScreen(this.index);
  @override
  _videoPlayScreenState createState() => _videoPlayScreenState();
}

class _videoPlayScreenState extends State<videoPlayScreen> {
  final image = url.imageUrl;
  Future<Video> futurevideo;

  final VideoController videoController = VideoController();
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;
  @override
  void initState() {
    super.initState();
    futurevideo = videoController.getVideo();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: query.width,
        child: FutureBuilder<Video>(
          future: videoController.getVideo(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Edit Profile",
                            style: TextStyle(
                                color: primaryWhite, fontSize: medium)),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close_rounded))
                      ],
                    ),
                  ),
                  Container(
                    height: 25.h,
                    child: Chewie(
                      controller: ChewieController(
                        videoPlayerController: VideoPlayerController.network(
                            image + snapshot.data.data[widget.index].video),
                        autoPlay: false,
                        looping: false,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    child: Text(
                      snapshot.data.data[widget.index].title,
                      maxLines: 1,
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: 12.sp,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    child: Text(
                        "Picks from the paddock    " +
                            snapshot.data.data[widget.index].videoDuration,
                        maxLines: 2,
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: small,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    child: Text(snapshot.data.data[widget.index].description,
                        maxLines: 2,
                        style: TextStyle(
                            color: primaryBlack,
                            fontSize: medium,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w400)),
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 1.5,
                  ),
                  Container(
                    child: Text(
                      "Next Videos",
                      maxLines: 1,
                      style: TextStyle(
                          color: primaryBlack,
                          fontSize: 12.sp,
                          fontFamily: "GlacialIndifference",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 25.h,
                    child: FutureBuilder<Video>(
                      future: videoController.getVideo(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.separated(
                              shrinkWrap: true,
                              itemCount: snapshot.data.data.length,
                              separatorBuilder: (context, index) => Divider(
                                  height: 1.5.h, color: backgroundColor),
                              itemBuilder: (context, index) {
                                return Container(
                                  width: query.width,
                                  color: primaryWhite,
                                  child: (Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CachedNetworkImage(
                                          imageUrl: image +
                                              snapshot.data.data[index].photo,
                                          placeholder: (context, url) => Center(
                                              child: Image.asset(
                                            "Assets/Images/giphy2.gif",
                                            height: 5.h,
                                            width: 5.h,
                                          )),
                                          errorWidget: (context, url, error) =>
                                              Icon(
                                            Icons.error,
                                            color: Colors.white,
                                          ),
                                          height: 55.sp,
                                          width: 55.sp,
                                          fit: BoxFit.fill,
                                        ),

                                        /*Image.network(
                                    image + snapshot.data.data[index].photo,
                                    height: 75.sp,
                                    width: 75.sp,
                                    fit: BoxFit.fill,
                                  ),*/
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
                                                  color: primaryBlack,
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
                                                      .videoDuration,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      color: primaryBlack,
                                                      fontSize: small,
                                                      fontFamily:
                                                          "GlacialIndifference",
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Container(
                                              width: 50.w,
                                              child: Text(
                                                  TimeAgo.timeAgoSinceDate(
                                                      snapshot.data.data[index]
                                                          .createdAt),
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      color: primaryBlack,
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
                  )
                ],
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
            return Center(child: progressBar());
          },
        ),
      ),
    );
  }
}
