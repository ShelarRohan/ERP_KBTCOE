import 'package:flutter/material.dart';

class StaffNotifPage extends StatefulWidget {
  const StaffNotifPage({Key? key}) : super(key: key);

  @override
  _StaffNotifPageState createState() => _StaffNotifPageState();
}

class _StaffNotifPageState extends State<StaffNotifPage> {
  get scaffoldKey => null;
  String name = "";
  bool changeButton = false;

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: true,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: [],
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            FittedBox(
              child: Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Understand With FittedBox",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Image.network(
                        'https://picsum.photos/seed/677/600',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 155,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.black,
                              width: 2.6,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Admin',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Colors.blue[500],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Date: 21st August 2022',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: Text(
                                        'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.grey[700],
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          280, 0, 0, 0),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text("Read more"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 155,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2.6,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ERP Admin',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: Colors.blue[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Date: 21st August 2022',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.grey[700],
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    280, 0, 0, 0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text("Read more"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //   Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
            //         child: Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 155,
            //           decoration: BoxDecoration(
            //             color: Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 2.6,
            //             ),
            //           ),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.max,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'IT Dept.',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w900,
            //                         fontSize: 20,
            //                         color: Colors.blue[500],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Date: 21st August 2022',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding:
            //                           EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            //                       child: Text(
            //                         'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
            //                         style: TextStyle(
            //                           fontFamily: 'Poppins',
            //                           color: Colors.grey[700],
            //                           fontSize: 12,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           280, 0, 0, 0),
            //                       child: TextButton(
            //                         onPressed: () {},
            //                         child: Text("Read more"),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            //   Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
            //         child: Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 155,
            //           decoration: BoxDecoration(
            //             color: Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 2.6,
            //             ),
            //           ),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.max,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Comp. Dept.',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w900,
            //                         fontSize: 20,
            //                         color: Colors.blue[500],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Date: 21st August 2022',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding:
            //                           EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            //                       child: Text(
            //                         'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
            //                         style: TextStyle(
            //                           fontFamily: 'Poppins',
            //                           color: Colors.grey[700],
            //                           fontSize: 12,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           280, 0, 0, 0),
            //                       child: TextButton(
            //                         onPressed: () {},
            //                         child: Text("Read more"),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            //   Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
            //         child: Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 155,
            //           decoration: BoxDecoration(
            //             color: Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 2.6,
            //             ),
            //           ),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.max,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Civil Dept.',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w900,
            //                         fontSize: 20,
            //                         color: Colors.blue[500],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Date: 21st August 2022',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding:
            //                           EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            //                       child: Text(
            //                         'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
            //                         style: TextStyle(
            //                           fontFamily: 'Poppins',
            //                           color: Colors.grey[700],
            //                           fontSize: 12,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           280, 0, 0, 0),
            //                       child: TextButton(
            //                         onPressed: () {},
            //                         child: Text("Read more"),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            //   Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
            //         child: Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 155,
            //           decoration: BoxDecoration(
            //             color: Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 2.6,
            //             ),
            //           ),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.max,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Mech. Dept.',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w900,
            //                         fontSize: 20,
            //                         color: Colors.blue[500],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Date: 21st August 2022',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding:
            //                           EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            //                       child: Text(
            //                         'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
            //                         style: TextStyle(
            //                           fontFamily: 'Poppins',
            //                           color: Colors.grey[700],
            //                           fontSize: 12,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           280, 0, 0, 0),
            //                       child: TextButton(
            //                         onPressed: () {},
            //                         child: Text("Read more"),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            //   Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
            //         child: Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 155,
            //           decoration: BoxDecoration(
            //             color: Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 2.6,
            //             ),
            //           ),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.max,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Sports Dept.',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w900,
            //                         fontSize: 20,
            //                         color: Colors.blue[500],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Date: 21st August 2022',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding:
            //                           EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            //                       child: Text(
            //                         'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
            //                         style: TextStyle(
            //                           fontFamily: 'Poppins',
            //                           color: Colors.grey[700],
            //                           fontSize: 12,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           280, 0, 0, 0),
            //                       child: TextButton(
            //                         onPressed: () {},
            //                         child: Text("Read more"),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            //   Row(
            //     mainAxisSize: MainAxisSize.max,
            //     children: [
            //       Padding(
            //         padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
            //         child: Container(
            //           width: MediaQuery.of(context).size.width,
            //           height: 155,
            //           decoration: BoxDecoration(
            //             color: Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(20),
            //             border: Border.all(
            //               width: 2.6,
            //             ),
            //           ),
            //           child: Column(
            //             mainAxisSize: MainAxisSize.max,
            //             children: [
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'T&P Dept.',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         fontWeight: FontWeight.w900,
            //                         fontSize: 20,
            //                         color: Colors.blue[500],
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(16, 2, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Text(
            //                       'Date: 21st August 2022',
            //                       style: TextStyle(
            //                         fontFamily: 'Poppins',
            //                         color: Colors.black,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(10, 8, 8, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding:
            //                           EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            //                       child: Text(
            //                         'The University stands for humanism and tolerance, for reason, \nfor adventure of ideas and for the search\nof .....',
            //                         style: TextStyle(
            //                           fontFamily: 'Poppins',
            //                           color: Colors.grey[700],
            //                           fontSize: 12,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //                 child: Row(
            //                   mainAxisSize: MainAxisSize.max,
            //                   children: [
            //                     Padding(
            //                       padding: EdgeInsetsDirectional.fromSTEB(
            //                           280, 0, 0, 0),
            //                       child: TextButton(
            //                         onPressed: () {},
            //                         child: Text("Read more"),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisSize: MainAxisSize.max,
            //                 children: [
            //                   Padding(
            //                     padding:
            //                         EdgeInsetsDirectional.fromSTEB(240, 0, 0, 0),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ],
          ],
        ),
      ),
    );
  }
}
