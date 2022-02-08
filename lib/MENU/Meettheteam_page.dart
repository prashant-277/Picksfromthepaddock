import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/Controller/meetTeamController.dart';
import 'package:picksfromthepaddock/Model/meetTeamModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';

class Meettheteam_page extends StatefulWidget {
  var check;

  Meettheteam_page(this.check);

  @override
  _Meettheteam_pageState createState() => _Meettheteam_pageState();
}

class _Meettheteam_pageState extends State<Meettheteam_page> {
  Future<MeetTeam> futureTeam;

  final MeetTeamController meetTeamController = MeetTeamController();
  final image = url.imageUrl;

  @override
  void initState() {
    super.initState();
    futureTeam = meetTeamController.getTeam();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "MEET THE TEAM",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/meet.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder<MeetTeam>(
            future: meetTeamController.getTeam(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    width: 250.w,
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: snapshot.data.data.length,
                        separatorBuilder: (context, index) =>
                            Divider(height: 1.5.h, color: backgroundColor),
                        itemBuilder: (context, index) {
                          return Container(
                            width: query.width,
                            color: primaryWhite,
                            child: (Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: primaryBlack,
                                    ),
                                    height: query.height * 0.18,
                                    width: query.width * 0.36,
                                    fit: BoxFit.fill,
                                  ),
                                  /*Image.asset(
                                    "Assets/Icons/meet2.png",
                                    height: query.height * 0.18,
                                    fit: BoxFit.fill,
                                  ),*/
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data.data[index].name,
                                        style: TextStyle(
                                            height: 1.2.sp,
                                            color: primaryBlack,
                                            fontSize: medium,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Container(
                                        width: query.width * 0.5,
                                        child: Text(
                                          snapshot.data.data[index].description,
                                          maxLines: 4,
                                          style: TextStyle(
                                              color: primaryBlack,
                                              fontSize: medium,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                          );
                        }));
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
        ),
      ),
    );
  }
}
