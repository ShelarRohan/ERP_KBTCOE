import 'package:erp_kbtcoe/Widgets/AppBar.dart';
import 'package:erp_kbtcoe/Widgets/UserDetailCard.dart';
import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/services/studentsharedpreference.dart';
import 'package:flutter/material.dart';

// import '../Widgets/userdetail.dart';

class ProfilePage extends StatefulWidget {
  String id;
  String name;
  String dob;
  String academic_year;
  String sex;
  String per_phone_no;
  String email;
  String admission_date;
  ProfilePage({
    Key? key,
    required this.id,
    required this.name,
    required this.dob,
    required this.academic_year,
    required this.sex,
    required this.per_phone_no,
    required this.email,
    required this.admission_date,
  }) : super(key: key);
  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState(
      id, name, dob, academic_year, sex, per_phone_no, email, admission_date);
}

class _ProfilePageWidgetState extends State<ProfilePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String id;
  String name;
  String dob;
  String academic_year;
  String sex;
  String per_phone_no;
  String email;
  String admission_date;

  _ProfilePageWidgetState(this.id, this.name, this.dob, this.academic_year,
      this.sex, this.per_phone_no, this.email, this.admission_date);
  @override
  Widget build(BuildContext context) {
    final StudentPrefService _prefService = StudentPrefService();
    final StudentUserCardService _userService = StudentUserCardService();

    _prefService.readCache();
    _userService.readCache();

    print("In widget ");
    print(kbtug);
    print(id);
    print(name);
    print(dob);
    print("End In widget");
    final student_profile = Student_Profile_Api(kbtug);

    return Scaffold(
      key: scaffoldKey,
      appBar: CommonAppBar(
        menuenabled: false,
        notificationenabled: true,
        ontap: () {},
        title: "Student Profile",
      ),
      // backgroundColor: Colors.blue,
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          UserDetailCard(
            id: id, name: name, dob: dob, academic_year: academic_year,
            // id: student_profile.student_data[0],
            // name: student_profile.student_data[1],
            // dob: student_profile.student_data[6],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Color(0xFF5189E9),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Details',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Full Name:',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(38, 0, 0, 0),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,

                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Date of Birth:',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(38, 0, 0, 0),
                      child: Text(
                        dob,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,

                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Academic Year:',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(38, 0, 0, 0),
                      child: Text(
                        academic_year,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,

                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Sex :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(38, 0, 0, 0),
                      child: Text(
                        sex,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,

                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Per Phone No :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(38, 0, 0, 0),
                      child: Text(
                        per_phone_no,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.07,

                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Admission Date :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(38, 0, 0, 0),
                      child: Text(
                        admission_date,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
