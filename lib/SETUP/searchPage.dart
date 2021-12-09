import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class searchPage extends StatefulWidget {
  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          backgroundColor: primaryBlack,
          automaticallyImplyLeading: false,
          centerTitle: false,
          // leading: IconButton(
          //   padding: EdgeInsets.zero,
          //
          //   icon: new Image.asset(
          //     'Assets/Icons/back.png',
          //     width: 15.0,
          //     height: 15.0,
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'Assets/Icons/back.png',
                  width: 3.w,
                  height: 3.h,
                ),
              ),
              Container(
                height: 6.h,
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: "GlacialIndifference",
                    fontSize: medium,
                    fontWeight: FontWeight.w500,
                    color: primaryBlack,
                    decoration: TextDecoration.none,
                  ),
                  autocorrect: true,
                  enableSuggestions: true,
                  autofocus: true,
                  maxLines: 1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      filled: true,
                      hintStyle: TextStyle(
                          fontFamily: "GlacialIndifference",
                          fontSize: medium,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      prefixIcon: new IconButton(
                        icon: new Image.asset(
                          'Assets/Icons/search2.png',
                          width: 15.0,
                          height: 15.0,
                        ),
                        onPressed: null,
                      ),
                      hintText: "Type here...",
                      fillColor: primaryWhite),
                  cursorColor: primaryBlack,
                  cursorWidth: 1.0,
                  cursorHeight: 3.h,
                ),
              ),
            ],
          )),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Assets/Icons/search2.png',
                width: 15.w,
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "No result found",
                  style: TextStyle(
                      fontFamily: "GlacialIndifference",
                      fontSize: small,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
