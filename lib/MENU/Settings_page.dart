import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/Controller/settingsController.dart';
import 'package:picksfromthepaddock/Model/SettingModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';


class Settings_page extends StatefulWidget {
  var check;

  Settings_page(this.check);


  @override
  _Settings_pageState createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
  Future<Settings> futureSettings;

  final SettingsController settingsController = SettingsController();

  @override
  void initState() {
    super.initState();
    futureSettings = settingsController.getSettings();
  }
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "SETTINGS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/settings.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        child: FutureBuilder<Settings>(
          future: settingsController.getSettings(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                child: Container(
                  child: Text(
                    snapshot.data.data.description
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            } else {
              Text("No Data",
                  style: TextStyle(
                      color: primaryBlack,
                      fontSize: medium,
                      fontFamily: "GlacialIndifference",
                      fontWeight: FontWeight.w700));
            }
            return Container(
                child: Center(child: progressBar()));
          },
        ),
      ),
    );
  }
}
