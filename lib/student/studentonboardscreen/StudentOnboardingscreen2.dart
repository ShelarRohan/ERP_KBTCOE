import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen1.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../api/api.dart';

class StudentOnboardingscreen2 extends StatefulWidget {
  String kbtug;

  StudentOnboardingscreen2({
    Key? key,
    required this.kbtug,
  }) : super(key: key);

  @override
  State<StudentOnboardingscreen2> createState() =>
      _StudentOnboardingscreen2State(kbtug, mtoken!);
}

var student_profile;

class _StudentOnboardingscreen2State extends State<StudentOnboardingscreen2> {
  get scaffoldKey => null;
  // late AndroidNotificationChannel channel;
  // late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  String? mtoken;

  String kbtug;

  _StudentOnboardingscreen2State(this.kbtug, this.mtoken);

  void getTokenFromFirestore() async {}

  // void saveToken(String token) async {
  //   await FirebaseFirestore.instance.collection("UserTokens").doc("User1").set({
  //     'token': token,
  //   });
  // }
//  void getToken() async {
//     await FirebaseMessaging.instance.getToken().then(
//             (token) {
//               setState(() {
//                 mtoken = token;
//               });

//               saveToken(token!);
//             }
//     );
//   }

  @override
  Widget build(BuildContext context) {
    print("In load scr widget ");
    print(kbtug);
    print("End In widget");
    student_profile = Student_Profile_Api(kbtug);

    print(
        "2222222222222222222222222222222222222222222222222222222222222222222222222222222222222");
    print(
        "333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333");
    print(student_profile);
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
                                StudentOnboardingscreen3(
                              token: mtoken!,
                              id: student_profile.student_data[0],
                              name: student_profile.student_data[1],
                              dob: student_profile.student_data[6],
                              academic_year: student_profile.student_data[4],
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
