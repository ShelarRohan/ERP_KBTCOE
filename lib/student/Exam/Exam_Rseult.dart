// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:erp_project/Widgets/AppBar.dart';
// import 'package:flutter/material.dart';
// import 'package:randomizer/randomizer.dart';

// import 'package:erp_project/Widgets/BouncingButton.dart';
// import 'package:erp_project/Widgets/Exams/SubjectCard.dart';
// // import 'package:erp_project/Widgets/MainDrawer.dart';

// // ignore: file_names
// import 'package:erp_project/Widgets/Attendance/AttendanceCard.dart';
// import 'package:erp_project/Widgets/BouncingButton.dart';
// import 'package:erp_project/Widgets/Exams/ResultCard.dart';
// // import 'package:erp_project/student/Exam/DetailResult.dart';
// import 'package:flutter/material.dart';

// class SemResult extends StatefulWidget {
//   @override
//   _SemResultState createState() => _SemResultState();
// }

// class _SemResultState extends State<SemResult> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Bouncing(
//             onPress: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => ExamResult(),
//                   ));
//             },
//             child: ResultCard(
//               sem:
//                   "54544", //sem is treted as subject code here, finalization after api integration
//               subject: "Ubiqutious computing",
//               percentage:
//                   "9.42", // percentage == cgpa , finalizationn after api integration
//             ),
//           ),
//           ResultCard(
//             sem:
//                 "41766", //sem is treted as subject code here, finalization after api integration
//             subject: "IOT",
//             percentage:
//                 "8.00", // percentage == cgpa , finalizationn after api integration
//           ),
//           ResultCard(
//             sem:
//                 "457886", //sem is treted as subject code here, finalization after api integration
//             subject: "STQA",
//             percentage:
//                 "7.23", // percentage == cgpa , finalizationn after api integration
//           ),
//         ],
//       ),
//     );
//   }
// }
