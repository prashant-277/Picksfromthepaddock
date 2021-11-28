import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/HOME/homePage.dart';
import 'package:picksfromthepaddock/SETUP/Page.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/SETUP/searchPage.dart';
import 'package:sizer/sizer.dart';
import 'package:custom_navigator/custom_navigation.dart';

class dashboard_page extends StatefulWidget {
  const dashboard_page({Key key}) : super(key: key);

  @override
  _dashboard_pageState createState() => _dashboard_pageState();
}

class _dashboard_pageState extends State<dashboard_page> {
  int currentIndex = 0;
  final navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryBlack,
          title: Image.asset(
            "Assets/Images/logo2.png",
            width: 80.w,
          ),
          actions: [
            Padding(
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
                      borderRadius: BorderRadius.all(Radius.circular(100))),
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
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                onPressed: null,
              ),
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
                onPressed: (){
                  setState(() {
                    currentIndex=1;
                  });
                },
              ),
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
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
        ),
        body: Stack(

          children: <Widget>[
            _buildPageOffstage(navigatorKeys[0], 0, "HOME"),
            _buildPageOffstage(navigatorKeys[1], 1, "TIPS"),
            _buildPageOffstage(navigatorKeys[2], 2, "NEWS"),
            _buildPageOffstage(navigatorKeys[3], 3, "FACEBOOK"),
            _buildPageOffstage(navigatorKeys[4], 4, "TWITTER"),
            _buildPageOffstage(navigatorKeys[5], 5, "MENU"),
          ],
        ),
      ),
    );
  }

  Widget _buildPageOffstage(
      GlobalKey<NavigatorState> key, int index, String s) {
    return Offstage(
      offstage: currentIndex != index,
      child: CustomNavigator(
        navigatorKey: key,
        home: page(title: '$s'),
        pageRoute: PageRoutes.materialPageRoute,
      ),
    );
  }
}
