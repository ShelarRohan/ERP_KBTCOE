// import 'dart:async';

import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/staffsharedpreference.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/staff/staffonboardscreen/StaffOnboardingscreen2.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StaffOnboardingscreen1 extends StatefulWidget {
  const StaffOnboardingscreen1({Key? key}) : super(key: key);

  @override
  State<StaffOnboardingscreen1> createState() => _StaffOnboardingscreen1State();
}

var staff_profile;

class _StaffOnboardingscreen1State extends State<StaffOnboardingscreen1> {
  get scaffoldKey => null;

  @override
  Widget build(BuildContext context) {
    final StaffPrefService _prefService = StaffPrefService();
    _prefService.readCache();
    print(empid);
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
                                  StaffOnboardingscreen2(empid: "IT024"),
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
