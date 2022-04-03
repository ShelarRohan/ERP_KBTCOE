import 'package:flutter/material.dart';

class MenteeCard extends StatefulWidget {
  String student_id;
  String name;
  String surname;
  String parent_name;
  String phone_no;
  String email;
  MenteeCard(
      {Key? key,
      required this.student_id,
      required this.name,
      required this.surname,
      required this.parent_name,
      required this.phone_no,
      required this.email});
  @override
  _MenteeCardState createState() =>
      _MenteeCardState(student_id, name, surname, parent_name, phone_no, email);
}

class _MenteeCardState extends State<MenteeCard>
    with SingleTickerProviderStateMixin {
  String student_id;
  String name;
  String surname;
  String parent_name;
  String phone_no;
  String email;

  _MenteeCardState(this.student_id, this.name, this.surname, this.parent_name,
      this.phone_no, this.email);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return (Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 5, 10, 3),
      child: Container(
        alignment: Alignment(0, 0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 0.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            height: height * 0.17,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                          // child: CircleAvatar(
                          //   radius: 28,
                          //   backgroundImage: AssetImage("images/profile.jpg"),
                          // ),
                          ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  student_id,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                name + " " + parent_name + " " + surname,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Phone No: " + phone_no,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Email: " + email,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
