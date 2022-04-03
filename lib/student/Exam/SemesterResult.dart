// ignore: file_names
import 'package:erp_kbtcoe/Widgets/Attendance/AttendanceCard.dart';
import 'package:erp_kbtcoe/Widgets/BouncingButton.dart';
import 'package:erp_kbtcoe/Widgets/Exams/ResultCard.dart';
import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/api/semmodal/sem.dart';
import 'package:erp_kbtcoe/student/Exam/DetailResult.dart';
import 'package:flutter/material.dart';

class SemResult extends StatefulWidget {
  // var semresult_data;
  List<Sem> sems;

  SemResult({
    Key? key,
    required this.sems,
  }) : super(key: key);
  @override
  _SemResultState createState() => _SemResultState(sems);
}

class _SemResultState extends State<SemResult> {
  // var semresult_data;
  List<Sem> sems;

  _SemResultState(this.sems);
  @override
  Widget build(BuildContext context) {
    print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
    print(sems[0].SEAT_NO);
    print("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");

    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: sems.length,
            itemBuilder: (context, index) {
              var semData = sems[index];
              print("data");
              print("data");
              print("data");
              print("data");
              print(semData.SRNO);
              print(semData.SRNO);
              print(semData.SGPA);
              return ResultCard(
                srno: semData.SRNO,
                year: semData.YR,
                pattern: semData.PAT,
                seatno: semData.SEAT_NO,
                sgpa: semData.SGPA,
              );
            }),
      ),
    );
  }
}
