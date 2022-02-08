import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import 'package:picksfromthepaddock/url.dart';

class tracker_page extends StatefulWidget {
  var check;

  tracker_page(this.check);

  @override
  _tracker_pageState createState() => _tracker_pageState();
}

class _tracker_pageState extends State<tracker_page> {
  FocusNode myFocusNode;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final url1 = url.basicUrl;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  Pattern pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    RegExp regex = new RegExp(pattern);

    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "TRACKER",
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
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Text(
                  "Get free email reminders for our eye catcher.",
                  style: TextStyle(
                      height: 1.2.sp,
                      color: primaryBlack,
                      fontSize: medium,
                      fontFamily: "GlacialIndifference",
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Whenever one of our eye catchers is set to run we’ll send out a personalised email reminder so you don’t miss a race.",
                  style: TextStyle(
                      height: 1.2.sp,
                      color: primaryBlack,
                      fontSize: medium,
                      fontFamily: "GlacialIndifference",
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 3.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryWhite,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 2.h),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            cursorColor: primaryBlack,
                            controller: nameController,
                            focusNode: myFocusNode,
                            autofocus: true,
                            maxLines: 1,
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                fontFamily: "GlacialIndifference",
                                color: primaryBlack,
                                fontSize: medium),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: backgroundColor, width: 1)),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: backgroundColor, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: backgroundColor,
                                    width: 1.0,
                                  ),
                                ),
                                fillColor: grayInput,
                                filled: true,
                                hintText: "Name*",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: small,
                                  fontFamily: "GlacialIndifference",
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            cursorColor: primaryBlack,
                            controller: emailController,
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                fontFamily: "GlacialIndifference",
                                color: primaryBlack,
                                fontSize: medium),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 18.0),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: backgroundColor, width: 1)),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                        color: backgroundColor, width: 1)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: backgroundColor,
                                    width: 1.0,
                                  ),
                                ),
                                fillColor: grayInput,
                                filled: true,
                                hintText: "Email*",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: small,
                                  fontFamily: "GlacialIndifference",
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Email';
                              }
                              return null;
                            },
                          ),
                        ),
                        isLoading
                            ? progressBar()
                            : Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  onTap: () {
                                    if (nameController.text.isEmpty) {
                                      displayToast("Please enter name.");
                                    } else if (emailController.text.isEmpty ||
                                        !regex.hasMatch(emailController.text)) {
                                      displayToast("Please enter valid email.");
                                    } else {
                                      tracker(nameController.text,
                                          emailController.text);
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: primaryBlack,
                                    ),
                                    height: query.height * 0.06,
                                    width: query.width,
                                    child: Center(
                                      child: Text(
                                        "SUBMIT",
                                        style: TextStyle(
                                            height: 1.2.sp,
                                            color: primaryWhite,
                                            fontSize: medium,
                                            letterSpacing: 2,
                                            fontFamily: "GlacialIndifference",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> tracker(String name, String email) async {
    setState(() {
      isLoading = true;
    });
    var url = "$url1/tracker";

    var map = new Map<String, dynamic>();
    map["name"] = name;
    map["email"] = email;

    final response = await http.post(Uri.parse(url), body: map);

    print(json.decode(response.body).toString());
    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
        nameController.clear();
        emailController.clear();
        myFocusNode.requestFocus();
      });
      customSnackbar.buildErrorSnackbar(context, "Success");

      return jsonDecode(response.body);
    } else {
      customSnackbar.buildErrorSnackbar(context, "Please try again!");
      setState(() {
        isLoading = false;
      });
    }
  }
}
