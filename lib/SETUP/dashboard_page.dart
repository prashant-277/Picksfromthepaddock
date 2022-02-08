import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/SETUP/Page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/SETUP/dashcontrol.dart';
import 'package:picksfromthepaddock/SETUP/searchPage.dart';
import 'package:sizer/sizer.dart';
import 'package:custom_navigator/custom_navigation.dart';

class dashboard_page extends StatefulWidget {
  @override
  _dashboard_pageState createState() => _dashboard_pageState();
}

class _dashboard_pageState extends State<dashboard_page> {
  dashController dash = Get.put(dashController());

  //int currentIndex = 0;
  final navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  bool search = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryBlack,
            automaticallyImplyLeading: false,
            title: Image.asset(
              "Assets/Images/logo2.png",
              width: 80.w,
            ),
            actions: [
              search == false
                  ? Text("")
                  : Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.bottomCenter,
                                  duration: Duration(milliseconds: 300),
                                  child: searchPage()));
                        },
                        child: Container(
                          width: 22.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Search",
                                  style: TextStyle(
                                      fontFamily: "GlacialIndifference",
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w500,
                                      color: primaryBlack),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Image.asset("Assets/Icons/search.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
            ],
            centerTitle: false,
          ),
          backgroundColor: backgroundColor,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: new IconButton(
                    icon: new Image.asset(
                      "Assets/Icons/home.png",
                      width: 6.w,
                    ),
                    onPressed: null),
                title: Text('HOME',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w500)),
              ),
              BottomNavigationBarItem(
                icon: new IconButton(
                    icon: new Image.asset(
                      'Assets/Icons/tips.png',
                      width: 6.w,
                    ),
                    onPressed: null),
                title: Text('TIPS',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w500)),
              ),
              BottomNavigationBarItem(
                icon: new IconButton(
                  icon: new Image.asset(
                    'Assets/Icons/news.png',
                    width: 6.w,
                  ),
                  onPressed: null,
                ),
                title: Text('NEWS',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w500)),
              ),
              BottomNavigationBarItem(
                icon: new IconButton(
                  icon: new Image.asset(
                    'Assets/Icons/fb.png',
                    width: 6.w,
                  ),
                  onPressed: null,
                ),
                title: Text('FACEBOOK',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w500)),
              ),
              BottomNavigationBarItem(
                icon: new IconButton(
                  icon: new Image.asset(
                    'Assets/Icons/tweeter.png',
                    width: 6.w,
                  ),
                  onPressed: null,
                ),
                title: Text('TWITTER',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w500)),
              ),
              BottomNavigationBarItem(
                icon: new IconButton(
                    icon: new Image.asset(
                      'Assets/Icons/more.png',
                      width: 6.w,
                    ),
                    onPressed: null),
                title: Text('MENU',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w500)),
              ),
            ],
            showUnselectedLabels: true,
            backgroundColor: primaryBlack,
            selectedItemColor: primaryWhite,
            unselectedItemColor: primaryWhite,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: "GlacialIndifference"),
            unselectedLabelStyle: TextStyle(fontFamily: "GlacialIndifference"),
            unselectedFontSize: 9.sp,
            selectedFontSize: 9.sp,
            onTap: (index) {
              setState(() {
                dash.currentIndex.value = index;

                if (dash.currentIndex.value == 3 ||
                    dash.currentIndex.value == 4) {
                  search = false;
                } else {
                  search = true;
                }
              });
            },
            currentIndex: dash.currentIndex.value,
          ),
          body: Obx(
            () => Stack(
              children: <Widget>[
                _buildPageOffstage(navigatorKeys[0], 0, "HOME"),
                _buildPageOffstage(navigatorKeys[1], 1, "TIPS"),
                _buildPageOffstage(navigatorKeys[2], 2, "NEWS"),
                _buildPageOffstage(navigatorKeys[3], 3, "FACEBOOK"),
                _buildPageOffstage(navigatorKeys[4], 4, "TWITTER"),
                _buildPageOffstage(navigatorKeys[5], 5, "MENU"),
              ],
            ),
          )),
    );
  }

  Widget _buildPageOffstage(
      GlobalKey<NavigatorState> key, int index, String s) {
    return Offstage(
      offstage: dash.currentIndex.value != index,
      child: CustomNavigator(
        navigatorKey: key,
        home: page(title: '$s'),
        pageRoute: PageRoutes.materialPageRoute,
      ),
    );
  }
}
