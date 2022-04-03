import 'package:erp_kbtcoe/Welcome/components/background.dart';
import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/staff/staff_login.dart';
import 'package:erp_kbtcoe/student/student_login.dart';
import 'package:flutter/material.dart';
// import 'package:erp_kbtcoe/Screens/Login/login_screen.dart';
// import 'package:erp_project/Screens/Signup/signup_screen.dart';
// import 'package:erp_project/Screens/Welcome/components/background.dart';
// import 'package:welcome/components/rounded_button.dart';
// import 'package:welcome/constants.dart';

class Body extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Color.fromARGB(255, 218, 187, 187),
    minimumSize: Size(200, 36),
    padding: EdgeInsets.symmetric(horizontal: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO NDMVP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Image(
              image: AssetImage(
                'images/chat.png',
              ),
              height: size.height * 0.45,

              // height: 360.0,
              // width: 300.0,
            ),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   // height: size.height * 0.45,
            // ),
            SizedBox(height: size.height * 0.09),
            ElevatedButton(
              // text: "SIGN UP",
              child: Text("Staff"),
              style: raisedButtonStyle,
              // color: kPrimaryLightColor,
              // textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Staff_Login(),
                  ),
                );
              },
            ),
            ElevatedButton(
              // text: "SIGN UP",
              child: Text("Student"),
              style: raisedButtonStyle,
              // color: kPrimaryLightColor,
              // textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Student_Login(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
