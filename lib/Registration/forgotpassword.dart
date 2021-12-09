import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:picksfromthepaddock/Registration/verification.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/textfield.dart';
import 'package:sizer/sizer.dart';

class forgotpassword extends StatefulWidget {
  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  TextEditingController name_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: cBlack,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: cBlack,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Image.asset(
                'Assets/Icons/back.png',
                width: 15.0,
                height: 15.0,
              ),
              Text(
                "Forgot Password",
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
        height: query.height / 1.8,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(""),
              Image.asset(
                "Assets/Icons/email2.png",
                height: 15.h,
              ),
              Text(
                  "Enter your email address below and we will send you a reset link",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "GlacialIndifference",
                      height: 1.5,
                      color: cwhite,
                      fontSize: medium)),
              textfield(
                controller: name_controller,
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.bottomCenter,
                          duration: Duration(milliseconds: 300),
                          child: verification()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: primaryRed,
                  ),
                  height: query.height * 0.07,
                  width: query.width,
                  child: Center(
                    child: Text(
                      "Send",
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
            ],
          ),
        ),
      ),
    );
  }
}
