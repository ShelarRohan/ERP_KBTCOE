// import 'dart:html';

import 'dart:async';

import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/student/student_dashboard.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'services/sharedpreference.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({Key? key}) : super(key: key);

  @override
  State<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  final UserCardService _userService = UserCardService();
  @override
  void initState() {
    // final id = student_profile.student_data[0];
    // final name = student_profile.student_data[1];
    // final dob = student_profile.student_data[6];

    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    // print(id);
    // print(name);
    // print(dob);
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
  }

  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    final PrefService _prefService = PrefService();
    _prefService.readCache();
    print("In load scr widget ");
    print(kbtug);
    print("End In widget");
    final student_profile = Student_Profile_Api(kbtug);

    print("this is ca");
    print("end");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(40),
              child: Image.asset(
                'images/logo.png',
                width: 400,
                height: 250,
              ),
            ),
            const Text(
              "MVP's",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {
                _userService.createCache(
                    student_profile.student_data[0],
                    student_profile.student_data[1],
                    student_profile.student_data[6],
                    student_profile.student_data[4]);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => StudentHome(),
                  ),
                );
              },
              child: Text('Goto Dashboard'),
            ),
            Text(
              "K.B.T. COE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent[700],
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Udoji Maratha Boarding Campus, Near Pumping Station, Gangapur Road, Nashik",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'images/naac.png',
                width: 400,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );

    // FutureBuilder(
    //   // Replace the 3 second delay with your initialization code:
    //   future: Future.delayed(const Duration(seconds: 5)),
    //   builder: (context, AsyncSnapshot snapshot) {
    //     print("inside future");
    //     // Show splash screen while waiting for app resources to load:
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
    //     } else {
    //       print("OBtainid");

    //       _prefService.readCache("kbtid").then((value) {
    //       print(value.toString());

    //       if (value != null) {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           home: Login(),
    //           // home: Login(),
    //         );
    //       } else {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           home: MyHome(),
    //           // home: Login(),
    //         );
    //       }
    //     }
    //   },
    // );
  }
}
