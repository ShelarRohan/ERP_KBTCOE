// import 'dart:async';

import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen2.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class StudentOnboardingscreen1 extends StatefulWidget {
  const StudentOnboardingscreen1({Key? key}) : super(key: key);

  @override
  State<StudentOnboardingscreen1> createState() =>
      _StudentOnboardingscreen1State();
}

var student_profile;
String? mtoken = "";

class _StudentOnboardingscreen1State extends State<StudentOnboardingscreen1> {
  get scaffoldKey => null;
  late AndroidNotificationChannel channel;
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  void getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      setState(() {
        mtoken = token;
      });

      print(
          "############################################################################# This is the token #############################################################");
      print(mtoken);

      // saveToken(token!);
    });
  } // final UserCardService _userService = UserCardService();

  @override
  void initstate() {
    requestPermission();

    loadFCM();

    listenFCM();

    getToken();

    super.initState();
    FirebaseMessaging.instance.subscribeToTopic("Animal");
  }

  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  void listenFCM() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              icon: 'launch_background',
            ),
          ),
        );
      }
    });
  }

  void loadFCM() async {
    if (!kIsWeb) {
      channel = const AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        importance: Importance.high,
        enableVibration: true,
      );

      flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

      /// Create an Android Notification Channel.
      ///
      /// We use this channel in the `AndroidManifest.xml` file to override the
      /// default FCM channel to enable heads up notifications.
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      /// Update the iOS foreground notification presentation options to allow
      /// heads up notifications.
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
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
