import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/textfield.dart';
import 'package:sizer/sizer.dart';

class editprofileDialog extends StatefulWidget {
  @override
  _editprofileDialogState createState() => _editprofileDialogState();
}

class _editprofileDialogState extends State<editprofileDialog> {
  TextEditingController name_controller =
      TextEditingController(text: "Robert Downey");
  TextEditingController email_controller =
      TextEditingController(text: "robertdowney@gmail.com");

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
          //height: query.height * 0.5,
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text("Edit Profile",
                      style: TextStyle(
                          fontFamily: "SFPro",
                          fontWeight: FontWeight.w700,
                          color: cBlack,
                          fontSize: medium)),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                  iconSize: 20.sp,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryRed, width: 2),
                      borderRadius: BorderRadius.circular(100.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(
                          "Assets/Icons/img.png",
                          height: 12.h,
                        )),
                  ),
                ),
                Positioned(
                    right: 2.sp,
                    bottom: 4.sp,
                    child: Image.asset(
                      "Assets/Icons/edit.png",
                      height: 3.h,
                    ))
              ],
            ),
            SizedBox(height: 5.h),
            textfield(
              controller: name_controller,
              obscureText: false,
              hintText: "User name",
              functionValidate: commonValidation,
              textcapitalization: TextCapitalization.words,
              prefixIcon: new IconButton(
                icon: new Image.asset(
                  'Assets/Icons/user1.png',
                  width: 15.0,
                  height: 15.0,
                  color: cBlack,
                ),
                onPressed: null,
              ),
              parametersValidate: "Please enter username",
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 2.h),
            textfield(
              controller: email_controller,
              obscureText: false,
              hintText: "Email",
              textcapitalization: TextCapitalization.none,
              functionValidate: commonValidation,
              prefixIcon: new IconButton(
                icon: new Image.asset(
                  'Assets/Icons/email.png',
                  width: 15.0,
                  height: 15.0,
                  color: cBlack,
                ),
                onPressed: null,
              ),
              parametersValidate: "Please enter email",
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 2.h),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: cBlack,
                ),
                height: query.height * 0.07,
                width: query.width,
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      height: 1.2.sp,
                      color: primaryWhite,
                      fontSize: medium,
                      fontFamily: "GlacialIndifference",
                    ),
                  ),
                ),
              ),
            ),
            Text("")
          ],
        ),
      )),
    );
  }
}
