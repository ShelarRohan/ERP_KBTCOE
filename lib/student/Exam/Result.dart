import 'package:erp_kbtcoe/Widgets/AppBar.dart';

import 'package:erp_kbtcoe/Widgets/UserDetailCard.dart';
import 'package:erp_kbtcoe/api/semmodal/sem.dart';
import 'package:erp_kbtcoe/student/Attendance/OverallAttendance.dart';
import 'package:erp_kbtcoe/student/Attendance/TodayAttendance.dart';
import 'package:erp_kbtcoe/student/Exam/SemesterResult.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  // var semresult_data;
  List<Sem> sems;

  Result({
    Key? key,
    required this.sems,
    // sems,
  }) : super(key: key);
  @override
  _ResultState createState() => _ResultState(sems);
}

class _ResultState extends State<Result> with SingleTickerProviderStateMixin {
  // var semresult_data;
  List<Sem> sems;
  _ResultState(this.sems);

  @override
  Widget build(BuildContext context) {
    // print("Thisis it ");
    // print(semresult_data);
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: CommonAppBar(
        title: "Result",
        menuenabled: false,
        notificationenabled: true,
        ontap: () {
          _scaffoldKey.currentState!.openDrawer();
        },
      ),
      // drawer: Drawer(
      //   elevation: 0,
      //   child: MainDrawer(),
      // ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            UserDetailCard(
              id: "Kbtug18075",
              name: "Bhanudas",
              dob: "15/07/2000",
              academic_year: "2021-2022",
            ),
            SizedBox(
              height: 15,
            ),
            DefaultTabController(
              length: 1, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      child: TabBar(
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black26,
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sr No",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Year",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   width: 10,
                                // ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Pattern",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Seat No",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "CGPA",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                // Container(
                                //   padding: EdgeInsets.all(10),
                                //   decoration: BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     color:
                                //         widget.attendance == true ? Colors.green : Colors.red,
                                //   ),
                                //   child: Center(
                                //     child: widget.attendance == true
                                //         ? Text(
                                //             "P",
                                //             style: TextStyle(
                                //               color: Colors.white,
                                //               fontWeight: FontWeight.bold,
                                //               fontSize: 14,
                                //             ),
                                //           )
                                //         : Text(
                                //             "A",
                                //             style: TextStyle(
                                //               color: Colors.white,
                                //               fontWeight: FontWeight.bold,
                                //               fontSize: 14,
                                //             ),
                                //           ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          // Tab(text: 'Overall'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.68, //height of TabBarView
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: TabBarView(
                      children: <Widget>[
                        SemResult(
                          sems: sems,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
