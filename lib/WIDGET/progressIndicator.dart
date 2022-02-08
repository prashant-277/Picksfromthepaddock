import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class progressBar extends StatefulWidget {
  @override
  _progressBarState createState() => _progressBarState();
}

class _progressBarState extends State<progressBar> {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(color: primaryRed);
  }
}
