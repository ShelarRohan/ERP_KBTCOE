import 'package:erp_kbtcoe/Widgets/Attendance/AttendanceCard.dart';
import 'package:flutter/material.dart';

class TodayAttendance extends StatefulWidget {
  @override
  _TodayAttendanceState createState() => _TodayAttendanceState();
}

class _TodayAttendanceState extends State<TodayAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 13,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 3),
                    //blurRadius: 3,
                    //spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Sem",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Text(
                      //   "${widget.sem}",
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 12,
                      //   ),
                      // ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Subject",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Text(
                      //   "${widget.staff}",
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 13,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Percentage",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
          ),
          AttendanceCard(
            sem: "7",
            subject: "SDM",
            percentage: "45",
          ),
          AttendanceCard(
            sem: "7",
            subject: "IOT",
            percentage: "80",
          ),
          AttendanceCard(
            sem: "7",
            subject: "STQA",
            percentage: "90",
          ),
        ],
      ),
    );
  }
}
