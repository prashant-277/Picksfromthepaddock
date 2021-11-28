import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:sizer/sizer.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String headerText;
  final List<Widget> widgets;
  final AppBar appBar;
  final bool imageBack;

  const BaseAppBar(
      {Key key, this.headerText, this.widgets, this.appBar, this.imageBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: imageBack ? 5 : 10,
        title: imageBack
            ? FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: EdgeInsets.zero,
                onPressed: null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: imageBack,
                      child: InkWell(
                        onTap: imageBack
                            ? () {
                                Navigator.pop(context);
                              }
                            : null,
                        child: Image.asset(
                          "Assets/Icons/backBlack.png",
                          height: large,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(
                        headerText,
                        style: TextStyle(
                            fontSize: large,
                            color: primaryRed,
                            fontFamily: "LeagueSpartan"),
                      ),
                    ),
                  ],
                ),
              )
            : Text(
                headerText,
                style: TextStyle(
                    fontSize: large,
                    color: primaryRed,
                    fontFamily: "LeagueSpartan"),
              ),
        actions: widgets);
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
