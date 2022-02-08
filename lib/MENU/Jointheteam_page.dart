import 'dart:convert';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:picksfromthepaddock/url.dart';
import 'package:http/http.dart' as http;

class Jointheteam_page extends StatefulWidget {
  var check;

  Jointheteam_page(this.check);

  @override
  _Jointheteam_pageState createState() => _Jointheteam_pageState();
}

class _Jointheteam_pageState extends State<Jointheteam_page> {
  bool isLoading = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  var selectedLanguage;
  final url1 = url.basicUrl;
  Pattern pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
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
        headerText: "JOIN THE TEAM",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/join.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: query.height,
          width: query.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "Assets/Icons/join.png",
                  height: 15.h,
                ),
                SizedBox(height: 2.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryWhite,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Please fill in the form below :",
                            style: TextStyle(
                                color: primaryBlack,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                                fontWeight: FontWeight.w400)),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: nameController,
                          cursorColor: primaryBlack,
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
                              hintText: "Name",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                              )),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: phoneController,
                          cursorColor: primaryBlack,
                          maxLines: 1,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
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
                              hintText: "Phone",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                              ),
                              counterText: ""),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: countryController,
                          cursorColor: primaryBlack,
                          showCursor: false,
                          readOnly: true,
                          maxLines: 1,
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
                              suffixIcon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black54,
                              ),
                              fillColor: grayInput,
                              filled: true,
                              hintText: "Select Country",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: small,
                                fontFamily: "GlacialIndifference",
                              )),
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode:
                                  false, // optional. Shows phone code before the country name.
                              onSelect: (Country country) {
                                setState(() {
                                  countryController.text = country
                                      .displayNameNoCountryCode
                                      .toString();
                                });
                              },
                            );
                          },
                        ),
                        SizedBox(height: 1.h),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: grayInput,
                          ),
                          height: query.height * 0.08,
                          width: query.width,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: LanguagePickerDropdown(
                              onValuePicked: (Language language) {
                                print(language.name);
                                setState(() {
                                  selectedLanguage = language.name.toString();
                                });
                              },
                              initialValue: Language.fromIsoCode("en"),
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: InkWell(
                            onTap: () {
                              if (nameController.text.isEmpty) {
                                displayToast("Please enter name");
                              } else if (phoneController.text.isEmpty) {
                                displayToast("Please enter phone number");
                              } else if (phoneController.text.length < 4) {
                                displayToast("Please enter valid phone number");
                              } else if (countryController.text.isEmpty) {
                                displayToast("Please select country");
                              } else {
                                jointheteam(
                                    nameController.text,
                                    phoneController.text,
                                    countryController.text,
                                    selectedLanguage);
                              }
                            },
                            child: isLoading
                                ? progressBar()
                                : Container(
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

  Future<void> jointheteam(
      String name, String phone, String country, String lang) async {
    setState(() {
      isLoading = true;
    });
    var url = "$url1/join-team-submit";

    print(name + phone + country + "    " + lang.toString());
    var map = new Map<String, dynamic>();
    map["name"] = name;
    map["phone"] = phone;
    map["country"] = country;
    map["language"] = lang.toString() == "null" ? "English" : lang.toString();

    final response = await http.post(Uri.parse(url), body: map);

    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
      });
      customSnackbar.buildErrorSnackbar(context, "Success");
      nameController.clear();
      phoneController.clear();
      countryController.clear();
      return jsonDecode(response.body);
    } else {
      customSnackbar.buildErrorSnackbar(context, "Please try again!");
      setState(() {
        isLoading = false;
      });
    }
  }
}
