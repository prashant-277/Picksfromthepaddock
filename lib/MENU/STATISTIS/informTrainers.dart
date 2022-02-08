import 'package:flutter/material.dart';
import 'package:picksfromthepaddock/Controller/informTrainerController.dart';
import 'package:picksfromthepaddock/Model/InformTrainerModel.dart';
import 'package:picksfromthepaddock/SETUP/constants.dart';
import 'package:picksfromthepaddock/WIDGET/appbarCustom.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class informTrainers extends StatefulWidget {
  var check;

  informTrainers(this.check);

  @override
  _informTrainersState createState() => _informTrainersState();
}

class _informTrainersState extends State<informTrainers> {
  Future<InformTrainer> futureInformTrainers;

  final InformTrainerController informTrainerController =
      InformTrainerController();

  @override
  void initState() {
    super.initState();
    futureInformTrainers = informTrainerController.getInformTrainer();
  }

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(
        imageBack: widget.check == "menu" ? true : false,
        appBar: AppBar(),
        headerText: "IN - FORM TRAINERS",
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
          initialUrl: 'https://www.horseracing.net/stats',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
      /*Container(
        height: query.height,
        width: query.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                "Trainers with the best strike rate from at least 2 wins in the last 14 days.",
                style: TextStyle(
                    color: primaryBlack,
                    fontSize: 12.sp,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w400),
              ),
              DataTable(
                dividerThickness: 0,
                //columnSpacing: 25.sp,
                headingRowHeight: 4.5.h,
                headingTextStyle: TextStyle(
                    fontSize: 12.sp,
                    color: primaryWhite,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w400),
                headingRowColor: MaterialStateColor.resolveWith((states) {
                  return primaryBlack;
                }),
                dataRowColor: MaterialStateColor.resolveWith((states) {
                  return primaryWhite;
                }),

                dataRowHeight: query.height / 2,
                dataTextStyle: TextStyle(
                    fontSize: small,
                    color: primaryRed,
                    fontFamily: "GlacialIndifference",
                    fontWeight: FontWeight.w400),
                columns: <DataColumn>[
                  DataColumn(
                    label: Container(
                      width: 85.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TRAINER",
                          ),
                          Text(
                            "WINS",
                          ),
                          Text(
                            'RUNS',
                          ),
                          Text(
                            'STRIKE RATE',
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
                        FutureBuilder<InformTrainer>(
                          future: informTrainerController.getInformTrainer(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Container(
                                width: 80.w,
                                child: ListView.builder(
                                  itemCount: snapshot.data.data.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 3.0.h,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(top: 5.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 15.w,
                                                child: Text(snapshot
                                                    .data.data[index].name)),
                                            Container(
                                                width: 10.w,
                                                child: Text(
                                                    snapshot
                                                        .data.data[index].wins,
                                                    style: TextStyle(
                                                        fontSize: small,
                                                        color: primaryBlack,
                                                        fontFamily:
                                                        "GlacialIndifference",
                                                        fontWeight:
                                                        FontWeight.w400))),
                                            Container(
                                                width: 10.w,
                                                child: Text(
                                                    snapshot
                                                        .data.data[index].run,
                                                    style: TextStyle(
                                                        fontSize: small,
                                                        color: primaryBlack,
                                                        fontFamily:
                                                        "GlacialIndifference",
                                                        fontWeight:
                                                        FontWeight.w400))),
                                            Container(
                                                width: 10.w,
                                                child: Text(
                                                    snapshot.data.data[index]
                                                        .strikeRate,
                                                    style: TextStyle(
                                                        fontSize: small,
                                                        color: primaryBlack,
                                                        fontFamily:
                                                        "GlacialIndifference",
                                                        fontWeight:
                                                        FontWeight.w400))),


      Text(snapshot.data.data[index].wins),
                                              Text(snapshot.data.data[index].run),
                                              Text(snapshot.data.data[index].strikeRate),


                                          ],
                                        ),
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
              )
            ],
          ),
        ),
      ),*/
    );
  }
}
