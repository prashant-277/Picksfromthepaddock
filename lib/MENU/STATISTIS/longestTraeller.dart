import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/Controller/LongestTravellersController.dart';
import 'package:picksfromthepaddock/Model/LongestTravellersModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:picksfromthepaddock/WIDGET/progressIndicator.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
class longestTraeller extends StatefulWidget {
  var check;

  longestTraeller(this.check);



  @override
  _longestTraellerState createState() => _longestTraellerState();
}

class _longestTraellerState extends State<longestTraeller> {

  Future<LongestTravellersModel> futureLongestTravellers;

  final LongestTravellersController longestTravellersController = LongestTravellersController();

  @override
  void initState() {
    super.initState();
    futureLongestTravellers = longestTravellersController.getlongestTravvellers();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "LONGEST TRAVELLERS",
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'Assets/Icons/statistic.png',
               width: 11.w,
            ),
          ),
        ],
      ),
      body: Container(
        height: query.height,
        width: query.width,
        child: WebView(
          initialUrl: 'http://icard.gbiracing.com/travellers',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),

      /*Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              dividerThickness: 0,
              headingRowHeight: 4.5.h,
              headingTextStyle: TextStyle(
                  fontSize: 12.sp,
                  color: primaryBlack,
                  fontFamily: "GlacialIndifference",
                  fontWeight: FontWeight.w400),
              headingRowColor: MaterialStateColor.resolveWith((states) {
                return grayInput;
              }),
              dataRowColor: MaterialStateColor.resolveWith((states) {
                return primaryWhite;
              }),

              dataRowHeight: query.height,
              dataTextStyle: TextStyle(
                  fontSize: small,
                  color: primaryRed,
                  fontFamily: "GlacialIndifference",
                  fontWeight: FontWeight.w400),
              columns: <DataColumn>[
                DataColumn(

                  label: Container(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          child: Text(
                            "Distance",
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            "Horse",
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            'Track',
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            'Time',
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            'Grade',
                          ),
                        ),
                        Container(
                          width: 25.w,
                          child: Text(
                            'Prize money',
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            'Trainer',
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            'Jockey',
                          ),
                        ),
                        Container(
                          width: 20.w,
                          child: Text(
                            'Latest odds',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      FutureBuilder<LongestTravellersModel>(
                        future: longestTravellersController.getlongestTravvellers(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Container(
                              width: 250.w,
                              child: ListView.builder(
                                itemCount: snapshot.data.data.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                    const EdgeInsets.only(top: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 20.w,
                                          child: Text(snapshot
                                              .data.data[index].distance),
                                        ),
                                        Container(
                                          width: 20.w,
                                          child: Text(
                                              snapshot.data.data[index].horseInfo.horseName,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                          width: 20.w,
                                          child: Text(
                                              snapshot
                                                  .data.data[index].track,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                          width: 20.w,
                                          child: Text(
                                              snapshot.data.data[index].time,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                          width: 20.w,
                                          child: Text(
                                              snapshot.data.data[index].grade,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                          width: 25.w,
                                          child: Text(
                                              snapshot.data.data[index].prizeMoney,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                          width: 20.w,
                                          child: Text(
                                              snapshot.data.data[index].trainerInfo.name,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                          width: 20.w,
                                          child: Text(
                                              snapshot.data.data[index].jockeyInfo.name,
                                              style: TextStyle(
                                                  fontSize: small,
                                                  color: primaryBlack,
                                                  fontFamily:
                                                  "GlacialIndifference",
                                                  fontWeight:
                                                  FontWeight.w400)),
                                        ),
                                        Container(
                                            width: 20.w,
                                            child: Text(
                                                snapshot.data.data[index].latestOdds,
                                                style: TextStyle(
                                                    fontSize: small,
                                                    color: primaryBlack,
                                                    fontFamily:
                                                    "GlacialIndifference",
                                                    fontWeight:
                                                    FontWeight.w400))),
                                      ],
                                    ),
                                  );
                                },
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
                              height: 25.h,
                              child: Center(child: progressBar()));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )

          */
      /*Column(
            children: [

              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 5.h,
                        color: grayInput,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Text(
                                  "Distance",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(width: 20.w),
                                Text(
                                  "Horse",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Track",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Time",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Grade",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Price money",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Trainer",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Jockey",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Latest adds",
                                  style: TextStyle(
                                      fontSize: small,
                                      color: primaryBlack,
                                      fontFamily: "GlacialIndifference",
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: primaryWhite,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Kerry Lee",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryRed,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "44 %",
                                    style: TextStyle(
                                        fontSize: small,
                                        color: primaryBlack,
                                        fontFamily: "GlacialIndifference",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: primaryWhite,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Kerry Lee",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryRed,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "4",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "9",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "44 %",
                                          style: TextStyle(
                                              fontSize: small,
                                              color: primaryBlack,
                                              fontFamily: "GlacialIndifference",
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h)
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),*/
    );
  }
}
