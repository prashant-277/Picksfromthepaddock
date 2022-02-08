import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

const primaryBlack = Color(0xff000000);
const primaryWhite = Color(0xffFFFFFF);
const primaryRed = Color(0xffBF2B2F);
const backgroundColor = Color(0xffF1EFEE);
const grayInput = Color(0xffE3E3E3);
const cBlack = Colors.black;
const cwhite = Colors.white;

const cFacebook = Color(0xff3B5998);
const ctwitter = Color(0xff00AEFF);
const cgreen = Color(0xff35C68B);

final header = 20.sp;
final large = 16.sp;
final medium = 14.sp;
final small = 10.sp;

/*

HEADLINE/PAGE TITLES SUB HEADING FONT - League Spartan - Bold
BODY TEXT FONT- Glacial Indifference - Regular, Bold

*/

class TimeAgo {
  static String timeAgoSinceDate(String dateString,
      {bool numericDates = true}) {
    DateTime notificationDate =
        DateFormat("yyyy-MM-ddThh:mm:ss.000000Z").parse(dateString);
    final date2 = DateTime.now();
    final difference = date2.difference(notificationDate);

    if (difference.inDays > 8) {
      return dateString.substring(0, 10);
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}

class  customSnackbar {
  static buildErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: primaryRed,
        content: Text("$message",
            style: TextStyle(
                color: primaryWhite,
                fontSize: medium,
                fontFamily: "GlacialIndifference",
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}

  void displayToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: primaryRed,
        textColor: Colors.white,
        fontSize: medium);
  }