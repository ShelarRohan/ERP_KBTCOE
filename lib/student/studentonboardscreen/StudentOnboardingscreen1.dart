// import 'dart:async';

import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StudentOnboardingscreen1 extends StatefulWidget {
  const StudentOnboardingscreen1({Key? key}) : super(key: key);

  @override
  State<StudentOnboardingscreen1> createState() =>
      _StudentOnboardingscreen1State();
}

var student_profile;

class _StudentOnboardingscreen1State extends State<StudentOnboardingscreen1> {
  get scaffoldKey => null;
  // final UserCardService _userService = UserCardService();
  @override
  void initState() {
    // final id = student_profile.student_data[0];
    // final name = student_profile.student_data[1];
    // final dob = student_profile.student_data[6];

    // final PrefService _prefService = PrefService();
    // _prefService.readCache();
    // print("In load scr widget ");
    // print(kbtug);
    // print("End In widget");
    // student_profile = Student_Profile_Api(kbtug);

    // print("//////////////////////////////////////////////////////////////////");
    // print("//////////////////////////////////////////////////////////////////");
    // print("//////////////////////////////////////////////////////////////////");
    // print(student_profile);
    // // print(name);
    // // print(dob);
    // print("//////////////////////////////////////////////////////////////////");
    // print("//////////////////////////////////////////////////////////////////");
    // print("//////////////////////////////////////////////////////////////////");
  }

  @override
  Widget build(BuildContext context) {
    final StudentPrefService _prefService = StudentPrefService();
    _prefService.readCache();
    print(kbtug);
    return Scaffold(
      key: scaffoldKey,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF7DC0FF),
                Color(0xFFBEE5FF),
                Color(0xFFFFFDFF),
                Color(0xFFFEFEFF),
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 40, 10, 10),
                  child: Image(
                    image: AssetImage(
                      'images/first.jpeg',
                    ),
                    width: 360,
                    height: 430,
                  )),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 1.0, bottom: 10.0),
                        child: Text(
                          'Connect people around the world!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 1.0, bottom: 20.0, left: 10.0, right: 10.0),
                        child: Text(
                          'Maratha Vidya Prasarak Samaj Maratha Vidya prasarak Samajs Karmaveer Baburao Ganpatrao Thakare College of Engineering.',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(25),
                    child: ElevatedButton(
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  StudentOnboardingscreen2(kbtug: "kbtug18181"),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
