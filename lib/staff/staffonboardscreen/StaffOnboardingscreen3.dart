import 'package:erp_kbtcoe/services/staffsharedpreference.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/staff/staff_dashboard.dart';
import 'package:erp_kbtcoe/student/student_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StaffOnboardingscreen3 extends StatefulWidget {
  String id;
  String name;
  String dob;
  String department;
  StaffOnboardingscreen3({
    Key? key,
    required this.id,
    required this.name,
    required this.dob,
    required this.department,
  }) : super(key: key);

  @override
  State<StaffOnboardingscreen3> createState() => _StaffOnboardingscreen3State(
        id,
        name,
        dob,
        department,
      );
}

class _StaffOnboardingscreen3State extends State<StaffOnboardingscreen3> {
  get scaffoldKey => null;
  String id;
  String name;
  String dob;
  String department;
  _StaffOnboardingscreen3State(this.id, this.name, this.dob, this.department);
  @override
  Widget build(BuildContext context) {
    final StaffUserCardService _userService = StaffUserCardService();

    _userService.createCache(id, name, dob, department);
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
                      'images/third.jpeg',
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
                        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Text(
                          'Get a new experience of Education',
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
                          'Multidisciplinary, and Multi-collaborative institute working on technology enabled platform fostering innovations and patents.',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(25),
                            child: ElevatedButton(
                              child: Text(
                                'Get Started',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        StaffHome(),
                                  ),
                                );
                                // _userService.createCache(
                                //     student_profile.student_data[0],
                                //     student_profile.student_data[1],
                                //     student_profile.student_data[6],
                                //     student_profile.student_data[4]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
