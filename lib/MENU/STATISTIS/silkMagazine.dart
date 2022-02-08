import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';

class silkMagazine extends StatefulWidget {
  var check;

  silkMagazine(this.check);


  @override
  _silkMagazineState createState() => _silkMagazineState();
}

class _silkMagazineState extends State<silkMagazine> {
  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "SILK MAGAZINE",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/magazin.png',
              width: 11.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          height: query.height,
          width: query.width,
          child: Image.asset("Assets/Icons/Image22.png"),
        ),
      ),
    );
  }
}
