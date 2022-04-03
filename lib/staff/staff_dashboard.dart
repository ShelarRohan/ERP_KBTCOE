import 'package:erp_kbtcoe/Widgets/DashboardCards.dart';
import 'package:erp_kbtcoe/Widgets/UserDetailCard.dart';
import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/staffsharedpreference.dart';
import 'package:erp_kbtcoe/staff/Mentee/mentee.dart';
import 'package:erp_kbtcoe/staff/staff_profile.dart';
import 'package:erp_kbtcoe/student/Attendance/Attendance.dart';

import 'package:erp_kbtcoe/student/Exam/Exam_Rseult.dart';
import 'package:erp_kbtcoe/student/Exam/Result.dart';
import 'package:erp_kbtcoe/student/Leave_Apply/Leave_apply.dart';
import 'package:erp_kbtcoe/student/student_notification.dart';
import 'package:erp_kbtcoe/student/student_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../Widgets/userdetail.dart';

import '../Widgets/AppBar.dart';
import '../Widgets/BouncingButton.dart';

class StaffHome extends StatefulWidget {
  const StaffHome({Key? key}) : super(key: key);

  @override
  State<StaffHome> createState() => _StaffHomeState();
}

Map<String, dynamic> details = {};

class _StaffHomeState extends State<StaffHome>
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
    final StaffUserCardService _userService = StaffUserCardService();

    _userService.readCache();

    print("In widget ");
    print(empid);
    print(id);
    print(name);
    print(dob);
    print(department);

    final StaffPrefService _prefService = StaffPrefService();
    _prefService.readCache();

    print("In widget ");
    print(empid);
    print("End In widget");
    final staff_profile = Staff_Profile_Api(empid);

    print("Mentee api call !!!!1");
    final staff_mentee = Staff_Mentee_Api(empid);

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
            title: "Staff Dashboard",
          ),
          body: ListView(
            children: [
              UserDetailCard(
                id: id.toString(),
                name: name.toString(),
                dob: dob.toString(),
                academic_year: department.toString(),
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
                                          Mentee(mentees: ment)));
                            },
                            child: DashboardCard(
                              name: "Mentee",
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
                                      StaffProfilePage(
                                    empid: staff_profile.staff_data[0],
                                    empname: staff_profile.staff_data[1],
                                    dob: staff_profile.staff_data[3],
                                    department: staff_profile.staff_data[5],
                                    sex: staff_profile.staff_data[4],
                                    mobileno: staff_profile.staff_data[7],
                                    email: staff_profile.staff_data[8],
                                    shortcode: staff_profile.staff_data[9],
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
                            onPress: () async {
                              await _userService.removeCache(
                                  'id', "name", "dob", "department");
                              await _prefService
                                  .removeCache("empid")
                                  .whenComplete(() {
                                Navigator.of(context)
                                    .pushNamed(StaffLoginRoute);
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

// class StudentHome extends StatefulWidget {
//   @override
//   State<StudentHome> createState() => _StudentHomeState();
// }
