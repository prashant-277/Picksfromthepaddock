import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/textfield.dart';
import 'package:sizer/sizer.dart';

class changepasswordDialog extends StatefulWidget {
  @override
  _changepasswordDialogState createState() => _changepasswordDialogState();
}

class _changepasswordDialogState extends State<changepasswordDialog> {
  bool show = true;
  bool show1 = true;
  bool show2 = true;
  TextEditingController _oldpswdCtrl = TextEditingController();
  TextEditingController _newpswdCtrl = TextEditingController();
  TextEditingController _confirmpswdCtrl = TextEditingController();

  void onTap() {
    show = !show;
    setState(() {});
  }

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

    return Container(
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
                    child: Text("Change password",
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
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      "Assets/Icons/change_pw1.png",
                      height: 10.h,
                    )),
              ),
              SizedBox(height: 2.h),
              Column(
                children: [
                  Container(
                      width: query.width / 1.15,
                      child: textfield(
                        controller: _oldpswdCtrl,
                        obscureText: show,
                        hintText: "Old password",
                        textcapitalization: TextCapitalization.none,
                        functionValidate: commonValidation,
                        suffixIcon: IconButton(
                          color: grayInput,
                          icon: !show
                              ? Image.asset(
                                  'Assets/Icons/visible.png',
                                  width: 25.0,
                                  height: 25.0,
                                )
                              : Image.asset(
                                  'Assets/Icons/invisible.png',
                                  width: 25.0,
                                  height: 25.0,
                                ),
                          onPressed: () {
                            onTap();
                          },
                        ),
                        prefixIcon: IconButton(
                          icon: new Image.asset(
                            'Assets/Icons/password.png',
                            width: 20.0,
                            height: 20.0,
                            color: cBlack,
                          ),
                          onPressed: null,
                        ),
                        parametersValidate: "Please enter old password",
                        textInputType: TextInputType.name,
                      )),
                  SizedBox(height: 1.5.h),
                  Container(
                      width: query.width / 1.15,
                      child: textfield(
                        controller: _newpswdCtrl,
                        obscureText: show1,
                        hintText: "New password",
                        textcapitalization: TextCapitalization.none,
                        functionValidate: commonValidation,
                        suffixIcon: IconButton(
                          color: grayInput,
                          icon: !show1
                              ? Image.asset(
                                  'Assets/Icons/visible.png',
                                  width: 25.0,
                                  height: 25.0,
                                )
                              : Image.asset(
                                  'Assets/Icons/invisible.png',
                                  width: 25.0,
                                  height: 25.0,
                                ),
                          onPressed: () {
                            onTap1();
                          },
                        ),
                        prefixIcon: IconButton(
                          icon: new Image.asset(
                            'Assets/Icons/password.png',
                            width: 20.0,
                            height: 20.0,
                            color: cBlack,
                          ),
                          onPressed: null,
                        ),
                        parametersValidate: "Please enter new password",
                        textInputType: TextInputType.text,
                      )),
                  SizedBox(height: 1.5.h),
                  Container(
                    width: query.width / 1.15,
                    child: textfield(
                      controller: _confirmpswdCtrl,
                      obscureText: show2,
                      hintText: "Confirm password",
                      functionValidate: commonValidation,
                      textcapitalization: TextCapitalization.none,
                      suffixIcon: IconButton(
                        color: grayInput,
                        icon: !show2
                            ? Image.asset(
                                'Assets/Icons/visible.png',
                                width: 25.0,
                                height: 25.0,
                              )
                            : Image.asset(
                                'Assets/Icons/invisible.png',
                                width: 25.0,
                                height: 25.0,
                              ),
                        onPressed: () {
                          onTap2();
                        },
                      ),
                      prefixIcon: IconButton(
                        icon: new Image.asset(
                          'Assets/Icons/password.png',
                          width: 20.0,
                          height: 20.0,
                          color: cBlack,
                        ),
                        onPressed: null,
                      ),
                      parametersValidate: "Please enter confirm password",
                      textInputType: TextInputType.text,
                    ),
                  ),
                  SizedBox(height: 1.5.h),
                ],
              ),
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
                      "Change",
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
        ));
  }
}
