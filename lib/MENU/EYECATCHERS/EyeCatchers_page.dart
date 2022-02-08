import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Controller/eyecatchersController.dart';
import 'package:picksfromthepaddock/MENU/EYECATCHERS/tracker_page.dart';
import 'package:picksfromthepaddock/Model/EyecatchersModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
class EyeCatchers_page extends StatefulWidget {
  var check;

  EyeCatchers_page(this.check);

  @override
  _EyeCatchers_pageState createState() => _EyeCatchers_pageState();
}

class _EyeCatchers_pageState extends State<EyeCatchers_page> {
  final image = url.imageUrl;

  Future<Eyecatchers> futureeyeCatchers;

  final EyecatchersController eyecatchersController = EyecatchersController();

  @override
  void initState() {
    super.initState();
    futureeyeCatchers = eyecatchersController.getEyecatchers();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "EYE CATCHERS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/eye_catcher.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: query.width,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    "Horse to track in your trackers",
                    style: TextStyle(
                        color: primaryBlack,
                        fontSize: medium,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w400),
                  ),
                ),
                FutureBuilder<Eyecatchers>(
                  future: eyecatchersController.getEyecatchers(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data.data.length,
                          separatorBuilder: (context, index) =>
                              Divider(height: 1.5.h, color: backgroundColor),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: primaryWhite,
                              ),
                              width: query.width,

                              child: (Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      color: backgroundColor,
                                      height: query.height * 0.18,
                                      width:query.width * 0.36,

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
                                        height: query.height * 0.18,
                                        width:query.width * 0.36,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    /*Image.asset(
                                      "Assets/Icons/2.png",
                                      height: query.height * 0.18,
                                      fit: BoxFit.fill,
                                    ),*/
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data.data[index].horseName,
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
                                            maxLines: 5,
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

                    return Padding(padding: EdgeInsets.all(20.h),
                        child: progressBar());
                  },
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade,
                    alignment: Alignment.bottomCenter,
                    duration: Duration(milliseconds: 300),
                    child: tracker_page("menu")));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: primaryRed,
            ),
            height: query.height * 0.06,
            width: query.width,
            child: Center(
              child: Text(
                "TRACKER",
                style: TextStyle(
                    height: 1.2.sp,
                    color: primaryWhite,
                    fontSize: medium,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
