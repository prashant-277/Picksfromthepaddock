import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/textfield.dart';
import 'package:sizer/sizer.dart';

class resetpassword extends StatefulWidget {
  @override
  _resetpasswordState createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
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
                "Reset Password",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(""),
              Image.asset(
                "Assets/Icons/reset_pw.png",
                height: 18.h,
              ),
              SizedBox(height: 5.h),
              textfield(
                controller: password_controller,
                obscureText: show1,
                hintText: "Password",
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
              SizedBox(height: 3.h),
              InkWell(
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
                      "Reset",
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
