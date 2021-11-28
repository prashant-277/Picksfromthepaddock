import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/TIPS/tipsArticle.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class Tips_page extends StatefulWidget {
  var check;

  Tips_page(this.check);

  @override
  _Tips_pageState createState() => _Tips_pageState();
}

class _Tips_pageState extends State<Tips_page> {
  @override
  Widget build(BuildContext context) {

    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        appBar: AppBar(),
        headerText: "TIPS",
        imageBack: widget.check=="menu"? true : false,
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/tops.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        child: ListView.builder(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 0.0, bottom: 8.0),
                  child: Container(
                    width: query.width,
                    color: primaryBlack,
                    child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "Assets/Icons/tipsImage.png",
                          height: 85.sp,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: query.width*0.55,
                                child: Text(
                                  "Wednesday flat racing tips",
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: primaryWhite,
                                      fontSize: 12.sp,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                  width: 50.w,
                                  child: Text(
                                      "Wednesday flat racing tips flat racing tips Wednesday flat racing tips",
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: primaryWhite,
                                          fontSize: small,
                                          fontFamily: "GlacialIndifference",
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                              Container(
                                width: 52.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType.fade,
                                                alignment: Alignment.bottomCenter,
                                                duration: Duration(milliseconds: 300),
                                                child: tipsArticle()));
                                      },
                                      color: primaryRed,
                                      padding: EdgeInsets.zero,
                                      child: Text("Read more",
                                          style: TextStyle(
                                              color: primaryWhite,
                                              fontSize: small,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400)),
                                      height: 3.h,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  )
                  /*Container(
                    //height: 15.h,
                    width: query.width,
                    color: primaryBlack,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      tileColor: primaryBlack,
                      dense: false,
                      title: Text(
                        "Wednesday flat racing tips",
                        style: TextStyle(
                            height: 0.2.h,
                            color: primaryWhite,
                            fontSize: 12.sp,
                            fontFamily: "GlacialIndifference",
                            fontWeight: FontWeight.w700),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                              "Wednesday flat racing tips Wednesday flat racing tips Wednesday flat racing tips",
                              maxLines: 2,
                              style: TextStyle(
                                  height: 0.2.h,
                                  color: primaryWhite,
                                  fontSize: small,
                                  fontFamily: "GlacialIndifference",
                                  fontWeight: FontWeight.w400)),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: MaterialButton(
                                onPressed: () {},
                                color: primaryRed,
                                child: Text("Read more",
                                    style: TextStyle(
                                        color: primaryWhite,
                                        fontSize: small,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400)),
                                height: 4.h,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      leading: Image.asset(

                        "Assets/Icons/tipsImage.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )*/
                  );
            }),
      ),
    );
  }
}
