import 'package:erp_kbtcoe/Widgets/AppBar.dart';
import 'package:erp_kbtcoe/Widgets/UserDetailCard.dart';
import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/services/staffsharedpreference.dart';
// import 'package:erp_project/services/studentsharedpreference.dart';
import 'package:flutter/material.dart';

class StaffProfilePage extends StatefulWidget {
  String empid;
  String empname;
  String dob;
  String department;
  String sex;
  String mobileno;
  String email;
  String shortcode;
  StaffProfilePage({
    Key? key,
    required this.empid,
    required this.empname,
    required this.dob,
    required this.department,
    required this.sex,
    required this.mobileno,
    required this.email,
    required this.shortcode,
  }) : super(key: key);

  @override
  _StaffProfilePageState createState() => _StaffProfilePageState(
      empid, empname, dob, department, sex, mobileno, email, shortcode);
}

class _StaffProfilePageState extends State<StaffProfilePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String empid;
  String empname;
  String dob;
  String department;
  String sex;
  String mobileno;
  String email;
  String shortcode;

  _StaffProfilePageState(this.empid, this.empname, this.dob, this.department,
      this.sex, this.mobileno, this.email, this.shortcode);
  @override
  Widget build(BuildContext context) {
    final StaffPrefService _prefService = StaffPrefService();
    final StaffUserCardService _userService = StaffUserCardService();

    _prefService.readCache();
    _userService.readCache();

    print("In widget ");
    print(empid);
    print("End In widget");
    final staff_profile = Staff_Profile_Api(empid);
    return Scaffold(
      key: scaffoldKey,
      appBar: CommonAppBar(
        menuenabled: false,
        notificationenabled: true,
        ontap: () {},
        title: "Staff Profile",
      ),
      // backgroundColor: Colors.blue,
      body: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          UserDetailCard(
            id: id.toString(),
            name: name.toString(),
            dob: dob.toString(),
            academic_year: department.toString(),
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
                        empname,
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
                        department,
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
                        mobileno,
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
                        shortcode,
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
