import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/staff/staffonboardscreen/StaffOnboardingscreen3.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../api/api.dart';

class StaffOnboardingscreen2 extends StatefulWidget {
  String empid;
  StaffOnboardingscreen2({
    Key? key,
    required this.empid,
  }) : super(key: key);

  @override
  State<StaffOnboardingscreen2> createState() =>
      _StaffOnboardingscreen2State(empid);
}

var staff_profile;

class _StaffOnboardingscreen2State extends State<StaffOnboardingscreen2> {
  get scaffoldKey => null;
  String empid;

  _StaffOnboardingscreen2State(this.empid);
  @override
  Widget build(BuildContext context) {
    print("In load scr widget ");
    print(empid);
    print("End In widget");
    staff_profile = Staff_Profile_Api(empid);

    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print(staff_profile);
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
                      'images/second.jpeg',
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
                          '\t Live your life smarter with us!',
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
                          'To educate and train common masses through undergraduate, post graduate, research programs by inculcating the values for discipline, quality and .',
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
                                StaffOnboardingscreen3(
                              id: staff_profile.staff_data[0],
                              name: staff_profile.staff_data[1],
                              dob: staff_profile.staff_data[1],
                              department: staff_profile.staff_data[5],
                            ),
                          ),
                        );
                      },
                    ),
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
