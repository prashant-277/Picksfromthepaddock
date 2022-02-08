import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;
class ContactUs_page extends StatefulWidget {
  var check;

  ContactUs_page(this.check);

  @override
  _ContactUs_pageState createState() => _ContactUs_pageState();
}

class _ContactUs_pageState extends State<ContactUs_page> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final url1 = url.basicUrl;
  FocusNode myFocusNode;
  TextEditingController email_ctrl = TextEditingController();
  TextEditingController comment_ctrl = TextEditingController();
  Pattern pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  @override
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
        headerText: "CONTACT US",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/contact.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: query.height,
          width: query.width,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("Assets/Icons/contact.png",
                  height: 20.h,),
                  SizedBox(height: 2.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email address*",
                          style: TextStyle(
                              color: primaryBlack,
                              fontSize: small,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 1.h),
                      TextFormField(
                        controller: email_ctrl,
                        cursorColor: primaryBlack,
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        focusNode: myFocusNode,
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
                                borderSide:
                                    BorderSide(color: backgroundColor, width: 1)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                    BorderSide(color: backgroundColor, width: 1)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: backgroundColor,
                                width: 1.0,
                              ),
                            ),
                            fillColor: primaryWhite,
                            filled: true,
                            hintText: "Email",
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
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Comment*",
                          style: TextStyle(
                              color: primaryBlack,
                              fontSize: small,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 1.h),
                      TextFormField(
                        controller: comment_ctrl,
                        cursorColor: primaryBlack,
                        keyboardType: TextInputType.text,
                        maxLines: query.height ~/ 200,
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
                                borderSide:
                                    BorderSide(color: backgroundColor, width: 1)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                borderSide:
                                    BorderSide(color: backgroundColor, width: 1)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: backgroundColor,
                                width: 1.0,
                              ),
                            ),
                            fillColor: primaryWhite,
                            filled: true,
                            hintText: "Type here...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: small,
                              fontFamily: "GlacialIndifference",
                            )),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Comment';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  isLoading
                      ? progressBar() : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: (){
                        if (email_ctrl.text.isEmpty || !regex.hasMatch(email_ctrl.text)) {
                          displayToast("Please enter valid email");
                          //print("validated");
                          //contact(email_ctrl.text, comment_ctrl.text);
                        }
                        else if(comment_ctrl.text.isEmpty){
                          displayToast("Please enter comment.");
                        }
                        else{
                          print("validated");
                          contact(email_ctrl.text, comment_ctrl.text);
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
                            "SEND",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> contact(String email, String comment) async {
    setState(() {
      isLoading = true;
    });
    var url = "$url1/contact-us-submit";

    var map = new Map<String, dynamic>();
    map["name"] = email;
    map["comment"] = comment;

    final response = await http.post(Uri.parse(url), body: map);

    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
        email_ctrl.clear();
        comment_ctrl.clear();
        myFocusNode.requestFocus();
      });
      customSnackbar.buildErrorSnackbar(context, "Success");
      return jsonDecode(response.body);

    } else {
      print(response.body);
      customSnackbar.buildErrorSnackbar(context, "Please try again!");
      setState(() {
        isLoading = false;
      });
    }
  }
}
