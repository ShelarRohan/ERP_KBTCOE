import 'package:erp_kbtcoe/Welcome/welcome_screen.dart';

import 'package:erp_kbtcoe/staff/staff_dashboard.dart';
import 'package:erp_kbtcoe/staff/staff_login.dart';
import 'package:erp_kbtcoe/staff/staff_notification.dart';
import 'package:erp_kbtcoe/staff/staffonboardscreen/StaffOnboardingscreen1.dart';
import 'package:erp_kbtcoe/staff/staffonboardscreen/StaffOnboardingscreen2.dart';
import 'package:erp_kbtcoe/staff/staffonboardscreen/StaffOnboardingscreen3.dart';

import 'package:erp_kbtcoe/student/student_login.dart';
import 'package:erp_kbtcoe/student/student_notification.dart';
import 'package:erp_kbtcoe/student/student_profile.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen1.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen2.dart';
import 'package:erp_kbtcoe/student/studentonboardscreen/StudentOnboardingscreen3.dart';
import 'package:flutter/material.dart';

import 'splashscreen.dart';
import 'student/student_dashboard.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// import 'student/student_dashboard.dart';
// import 'student/login.dart';
// import 'student/signup.dart';
// import 'splashscreen.dart';

const String SplashRoute = "/mysplash";
const String LoginRoute = "/login";
const String StaffLoginRoute = "/stafflogin";
const String StudentHomeRoute = "/studethome";
const String StaffHomeRoute = "/staffhome";
const String StudentProfileRoute = "/profile";
const String StaffNotificationRoute = "/staffnotification";
const String NotificationRoute = "/notification";
const String WelcomeRoute = "/welcome";

const String StaffOnboardScreenRoute = "/staffonboardingscreen";

const String StudentOnboardScreenRoute1 = "/studentonboardingscreen1";
const String StudentOnboardScreenRoute2 = "/studentonboardingscreen2";
const String StudentOnboardScreenRoute3 = "/studentonboardingscreen3";
const String StaffOnboardScreenRoute1 = "/staffonboardingscreen1";
const String StaffOnboardScreenRoute2 = "/staffonboardingscreen2";
const String StaffOnboardScreenRoute3 = "/staffonboardingscreen3";

const String splash2Route = "/splash2view";
const String splash3Route = "/splash3view";

// const String SignupRoute = "/signup";
// const String StudentProfileRoute = "/student_profile";
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashRoute,
      routes: {
        SplashRoute: (context) => Splash(),

        LoginRoute: (context) => Student_Login(),
        StaffLoginRoute: (context) => Staff_Login(),
        StudentHomeRoute: (context) => StudentHome(),
        StaffHomeRoute: (context) => StaffHome(),
        StaffNotificationRoute: (context) => StaffNotifPage(),
        StudentOnboardScreenRoute1: (context) => StudentOnboardingscreen1(),
        // StudentOnboardScreenRoute2: (context) => StudentOnboardingscreen2(),
        // StudentOnboardScreenRoute3: (context) => StudentOnboardingscreen3(),
        StaffOnboardScreenRoute1: (context) => StaffOnboardingscreen1(),
        // StaffOnboardScreenRoute2: (context) => StaffOnboardingscreen2(),
        // StaffOnboardScreenRoute3: (context) => StaffOnboardingscreen3(),

        WelcomeRoute: (context) => WelcomeScreen(),
        // HomeRoute: (context) => StaffProfilePage(),
        // NotificationRoute: (context) => NotifPage(),
        // SignupRoute: (context) => SignUp(),
        // StudentProfileRoute: (context) => ProfilePage(),
      },
    ),
  );
}

// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: SplashRoute,
//       routes: {
//         SplashRoute: (context) => Splash(),

//         LoginRoute: (context) => Student_Login(),
//         StaffLoginRoute: (context) => Staff_Login(),
//         StudentHomeRoute: (context) => StudentHome(),
//         StaffHomeRoute: (context) => StaffHome(),
//         StaffNotificationRoute: (context) => StaffNotifPage(),
//         StudentOnboardScreenRoute1: (context) => StudentOnboardingscreen1(),
//         // StudentOnboardScreenRoute2: (context) => StudentOnboardingscreen2(),
//         // StudentOnboardScreenRoute3: (context) => StudentOnboardingscreen3(),
//         StaffOnboardScreenRoute1: (context) => StaffOnboardingscreen1(),
//         // StaffOnboardScreenRoute2: (context) => StaffOnboardingscreen2(),
//         // StaffOnboardScreenRoute3: (context) => StaffOnboardingscreen3(),

//         WelcomeRoute: (context) => WelcomeScreen(),
//         // HomeRoute: (context) => StaffProfilePage(),
//         // NotificationRoute: (context) => NotifPage(),
//         // SignupRoute: (context) => SignUp(),
//         // StudentProfileRoute: (context) => ProfilePage(),
//       },
//     ),
//   );
// }
