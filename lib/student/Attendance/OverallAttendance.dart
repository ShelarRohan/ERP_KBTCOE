import 'package:erp_kbtcoe/Widgets/Attendance/OverAllAttendanceCard.dart';
import 'package:flutter/material.dart';

class OverallAttendance extends StatefulWidget {
  @override
  _OverallAttendanceState createState() => _OverallAttendanceState();
}

class _OverallAttendanceState extends State<OverallAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          OverallAttendanceCard(
            engaged: "256",
            absent: "149",
            present: "47",
            // secondhalf: false,
          ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
          // OverallAttendanceCard(
          //   date: "15.12.2020",
          //   day: "sunday",
          //   firsthalf: true,
          //   secondhalf: false,
          // ),
        ],
      ),
    );
  }
}
