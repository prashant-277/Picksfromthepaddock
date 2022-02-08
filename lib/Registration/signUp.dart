import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Registration/signin.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/textfield.dart';
import 'package:sizer/sizer.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController name_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController confirmpassword_controller = TextEditingController();
  bool show1 = true;
  bool show2 = true;

  void onTap1() {
    show1 = !show1;
    setState(() {});
  }

  void onTap2() {
    show2 = !show2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: cBlack,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: cBlack,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Row(
            children: [
              Text(
                "Signup",
                style: TextStyle(
                    fontSize: medium,
                    color: cwhite,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Image.asset(
              "Assets/Images/logo1.png",
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
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
                  SizedBox(height: 1.5.h),
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
                  SizedBox(height: 1.5.h),
                  textfield(
                    controller: password_controller,
                    obscureText: show1,
                    hintText: "New password",
                    textcapitalization: TextCapitalization.none,
                    functionValidate: commonValidation,
                    suffixIcon: IconButton(
                      color: grayInput,
                      icon: !show1
                          ? Image.asset(
                              'Assets/Icons/visible.png',
                              width: 20.0,
                              height: 20.0,
                            )
                          : Image.asset(
                              'Assets/Icons/invisible.png',
                              width: 20.0,
                              height: 20.0,
                            ),
                      onPressed: () {
                        onTap1();
                      },
                    ),
                    prefixIcon: IconButton(
                      icon: new Image.asset(
                        'Assets/Icons/password.png',
                        width: 15.0,
                        height: 15.0,
                        color: cBlack,
                      ),
                      onPressed: null,
                    ),
                    parametersValidate: "Please enter new password",
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 1.5.h),
                  textfield(
                    controller: confirmpassword_controller,
                    obscureText: show2,
                    hintText: "Confirm password",
                    functionValidate: commonValidation,
                    textcapitalization: TextCapitalization.none,
                    suffixIcon: IconButton(
                      color: grayInput,
                      icon: !show2
                          ? Image.asset(
                              'Assets/Icons/visible.png',
                              width: 20.0,
                              height: 20.0,
                            )
                          : Image.asset(
                              'Assets/Icons/invisible.png',
                              width: 20.0,
                              height: 20.0,
                            ),
                      onPressed: () {
                        onTap2();
                      },
                    ),
                    prefixIcon: IconButton(
                      icon: new Image.asset(
                        'Assets/Icons/password.png',
                        width: 15.0,
                        height: 15.0,
                        color: cBlack,
                      ),
                      onPressed: null,
                    ),
                    parametersValidate: "Please enter confirm password",
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: primaryRed,
                  ),
                  height: query.height * 0.07,
                  width: query.width,
                  child: Center(
                    child: Text(
                      "Signup",
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
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(

                    style: TextStyle(
                        color: cwhite,
                        fontSize: medium,
                        fontFamily: "GlacialIndifference"),
                    text: "Already have an account?",
                  ),

                  WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    style: TextStyle(
                        color: primaryRed,
                        fontSize: medium,
                        fontFamily: "GlacialIndifference",
                        fontWeight: FontWeight.w700),
                    text: "Sign in",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 300),
                                child: signin()));
                      },
                  ),
                ],
              ),
            ),
            Text("")
          ],
        ),
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}
