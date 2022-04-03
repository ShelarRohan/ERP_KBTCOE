import 'package:erp_kbtcoe/Widgets/DashboardCards.dart';
import 'package:erp_kbtcoe/Widgets/UserDetailCard.dart';
import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/student/Exam/Exam_Rseult.dart';
import 'package:erp_kbtcoe/student/Exam/Result.dart';
import 'package:erp_kbtcoe/student/student_notification.dart';
import 'package:erp_kbtcoe/student/student_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../Widgets/userdetail.dart';
import 'Attendance/Attendance.dart';
import 'Leave_Apply/Leave_apply.dart';

import '../Widgets/AppBar.dart';
import '../Widgets/BouncingButton.dart';

import 'Attendance/Attendance.dart';
import 'Leave_Apply/Leave_apply.dart';

class StudentHome extends StatefulWidget {
  @override
  State<StudentHome> createState() => _StudentHomeState();
}

Map<String, dynamic> details = {};

class _StudentHomeState extends State<StudentHome>
    with SingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Firebase.initializeApp();
    SystemChrome.setEnabledSystemUIOverlays([]);
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    LeftCurve = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut)));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final StudentUserCardService _userService = StudentUserCardService();

    _userService.readCache();

    print("In widget ");
    print(kbtug);
    print(id);
    print(name);
    print(dob);
    print(academic_year);

    final StudentPrefService _prefService = StudentPrefService();
    _prefService.readCache();

    print("In widget ");
    print(kbtug);
    print("End In widget");
    final student_profile = Student_Profile_Api(kbtug);

    print("Result api will call next");
    // final semwise_result_data = Semwise_Result_Api(kbtug);
    Semwise_Result_Api(kbtug);

    print("Result api END here");
    print("this is ca");
    // print(ca);
    print("end");

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        final GlobalKey<ScaffoldState> _scaffoldKey =
            new GlobalKey<ScaffoldState>();
        return Scaffold(
          key: _scaffoldKey,
          // drawer: Drawer(
          //   elevation: 0,
          //   child: MainDrawer(),
          // ),
          appBar: CommonAppBar(
            menuenabled: false,
            notificationenabled: true,
            ontap: () {},
            title: "Student Dashboard",
          ),
          body: ListView(
            children: [
              UserDetailCard(
                id: id.toString(),
                name: name.toString(),
                dob: dob.toString(),
                academic_year: academic_year.toString(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Attendance(),
                                  ));
                            },
                            child: DashboardCard(
                              name: "Attendance",
                              imgpath: "attendance.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ProfilePage(
                                    id: student_profile.student_data[0],
                                    name: student_profile.student_data[1],
                                    dob: student_profile.student_data[6],
                                    academic_year:
                                        student_profile.student_data[4],
                                    sex: student_profile.student_data[5],
                                    per_phone_no:
                                        student_profile.student_data[8],
                                    email: student_profile.student_data[9],
                                    admission_date:
                                        student_profile.student_data[10],
                                  ),
                                ),
                              );
                            },
                            child: DashboardCard(
                              name: "Profile",
                              imgpath: "profile.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Result(
                                      sems: sem,
                                    ),
                                  ));
                            },
                            child: DashboardCard(
                              name: "Exam",
                              imgpath: "exam.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "TimeTable",
                              imgpath: "calendar.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "Library",
                              imgpath: "library.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(
                              delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LeaveApply(),
                                  ));
                            },
                            child: DashboardCard(
                              name: "Apply Leave",
                              imgpath: "leave_apply.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(
                              muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () async {
                              await _userService.removeCache(
                                  'id', "name", "dob", "academic_year");
                              await _prefService
                                  .removeCache("kbtid")
                                  .whenComplete(() {
                                Navigator.of(context).pushNamed(LoginRoute);
                              });
                            },
                            child: const DashboardCard(
                              name: "Logout",
                              imgpath: "logout.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
