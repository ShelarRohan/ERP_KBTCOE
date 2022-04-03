// import 'dart:html';

import 'dart:async';

import 'package:flutter/material.dart';
import 'main.dart';
import 'services/studentsharedpreference.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final StudentPrefService _prefService = StudentPrefService();
  final StudentUserCardService _userService = StudentUserCardService();

  @override
  void initState() {
    _prefService.readCache().then((value) {
      print(value.toString());
      if (value != null) {
        _userService.readCache().then((value) {
          if (value != null) {
            print("Inner IF Loop");

            return Timer(Duration(seconds: 2),
                () => Navigator.of(context).pushNamed(StudentHomeRoute));
          } else {
            print("Inner Else Loop");

            return Timer(
                Duration(seconds: 2),
                () => Navigator.of(context)
                    .pushNamed(StudentOnboardScreenRoute1));
          }
        });
      } else {
        print("Outer Else Loop");
        return Timer(Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(WelcomeRoute));
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
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
