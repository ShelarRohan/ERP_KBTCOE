// ignore_for_file: unnecessary_new

import 'dart:convert';

import 'package:erp_kbtcoe/main.dart';
import 'package:erp_kbtcoe/services/staffsharedpreference.dart';
// import 'package:erp_kbtcoe/student/onboardscreen/onboardingscreen.dart';

import 'package:flutter/material.dart';
import 'package:erp_kbtcoe/Widgets/BouncingButton.dart';

// import 'package:fzregex/utils/fzregex.dart';
// import 'package:fzregex/utils/pattern.dart';
import 'package:http/http.dart' as http;
import '../api/api.dart';
import '../services/studentsharedpreference.dart';

class Staff_Login extends StatefulWidget {
  const Staff_Login({Key? key}) : super(key: key);

  @override
  State<Staff_Login> createState() => _Staff_LoginState();
}

late String _empid, _password;

class _Staff_LoginState extends State<Staff_Login>
    with SingleTickerProviderStateMixin {
  bool _isLoading = false;
  late Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsFlutterBinding.ensureInitialized();
    // Firebase.initializeApp();
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    LeftCurve = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut)));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool passshow = false;

  final TextEditingController empidController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    final login_data = Login_Api();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    signIn(String empid, password) async {
      // sharedPreferences = await SharedPreferences.getInstance();
      final StaffPrefService _prefService = StaffPrefService();
      Map data = {'empid': empid, 'password': password};
      var jsonResponse = null;
      var response = await http.post(
          Uri.parse('http://192.168.43.126:8000/user/stafflogin/'),
          headers: {"Content-Type": "application/json"},
          body: json.encode(data));

      print("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 201) {
        jsonResponse = json.decode(response.body);
        print("statsssa");
        print(jsonResponse);

        // jsonResponse = json.decode(response.body);
        if (jsonResponse != null) {
          print("response");
          setState(() {
            print("setstate");
            _isLoading = false;
          });

          // sharedPreferences.setString('kbtid', kbtidController.text);
          // _prefService.createCache(kbtidController.text);
          print("Sharedpreference get");
          // print(sharedPreferences.getString('kbtid'));
          // print(_prefService.readCache('kbtid'));

          _prefService.createCache(empidController.text).whenComplete(() {
            Navigator.of(context).pushNamed(StaffOnboardScreenRoute1);
          });
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => const MyHome()));
          // Navigator.of(context).pushAndRemoveUntil(
          //     MaterialPageRoute(builder: (BuildContext context) => MyHome()),
          //     (Route<dynamic> route) => false);
        }
      } else {
        setState(() {
          _isLoading = false;
        });
        print(response.body);
      }
    }

    animationController.forward();
    return _isLoading
        ? Center(child: CircularProgressIndicator())
        : AnimatedBuilder(
            animation: animationController,
            builder: (BuildContext context, Widget? child) {
              return Scaffold(
                body: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: Center(
                          child: Stack(
                            children: const <Widget>[
                              Image(
                                image: AssetImage("images/logo.png"),
                                height: 300,
                                width: 400,
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                              ),
                              // Container(
                              //   child: Text(
                              //     'NDMVP',
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 40.0,
                              //         fontWeight: FontWeight.bold),
                              //   ),
                              // ),
                              // Container(
                              //   child: Padding(
                              //     padding:
                              //         const EdgeInsets.fromLTRB(30.0, 35.0, 0, 0),
                              //     child: Text(
                              //       'KBTCOE',
                              //       style: TextStyle(
                              //           color: Color(0xFFFF2400),
                              //           fontSize: 40.0,
                              //           fontWeight: FontWeight.bold),
                              //     ),
                              //   ),
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.fromLTRB(135.0, 0.0, 0, 30),
                              //   child: Container(
                              //     child: Text(
                              //       '.',
                              //       style: TextStyle(
                              //           color: Colors.green[400],
                              //           fontSize: 80.0,
                              //           fontWeight: FontWeight.bold),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: Container(
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 0),
                          child: Text(
                            'Staff Login Page ',
                            style: TextStyle(
                                color: Color(0xFF246EE9),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                      child: Transform(
                        transform: Matrix4.translationValues(
                            LeftCurve.value * width, 0, 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  TextFormField(
                                    controller: empidController,
                                    validator: (input) {
                                      if (input!.isEmpty) return 'Enter Kbtug';
                                    },
                                    onSaved: (input) => _empid = input!,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      labelText: 'empid',
                                      hintText: 'Enter Empid',
                                      prefixIcon: Icon(Icons.email),
                                      contentPadding: EdgeInsets.all(5),
                                      labelStyle: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.grey),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  TextFormField(
                                    controller: passwordController,
                                    obscuringCharacter: '*',
                                    validator: (input) {
                                      if (input!.length < 6)
                                        return 'Provide Minimum 6 Character';
                                    },
                                    onSaved: (input) {
                                      _password = input!;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        suffix: passshow == false
                                            ? IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    passshow = true;
                                                  });
                                                },
                                                icon: Icon(Icons.lock_open),
                                              )
                                            : IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    passshow = false;
                                                  });
                                                },
                                                icon: Icon(Icons.lock),
                                              ),
                                        labelText: 'Password',
                                        hintText: 'Enter Password',
                                        prefixIcon: Icon(Icons.lock),
                                        contentPadding: EdgeInsets.all(5),
                                        labelStyle: const TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.grey),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.green))),
                                    // obscureText:
                                    //     passshow == false ? true : false,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                    //   child: Transform(
                    //     transform: Matrix4.translationValues(
                    //         delayedAnimation.value * width, 0, 0),
                    //     child: Container(
                    //       alignment: Alignment(1.0, 0),
                    //       child: Padding(
                    //         padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    //         child: Bouncing(
                    //           onPress: () {
                    //             Navigator.push(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                   builder: (BuildContext context) =>
                    //                       ForgetPassword(),
                    //                 ));
                    //           },
                    //           child: Text(
                    //             "Forgot password?",
                    //             style: TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               color: Colors.green,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 5, 20.0, 5),
                      child: Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      _isLoading = true;
                                    });
                                    signIn(empidController.text,
                                        passwordController.text);
                                  },
                                  //    onPressed: kbtidController.text ==
                                  //         "" ||
                                  //     passwordController.text == ""
                                  // ? null
                                  // : () {
                                  //     setState(() {
                                  //       _isLoading = true;
                                  //     });
                                  //     signIn(kbtidController.text,
                                  //         passwordController.text);
                                  //   },
                                  // color: Colors.orange,
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(20.0),
                                  // ),
                                  elevation: 0.0,
                                  minWidth: MediaQuery.of(context).size.width,
                                  color: Colors.green,
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              SizedBox(height: 10.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 30),
                    //   child: Container(
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: <Widget>[
                    //         Text(
                    //           "Coded By NDMVP",
                    //           style: TextStyle(
                    //               color: Colors.black, fontWeight: FontWeight.bold),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              );
            },
          );
  }
}
