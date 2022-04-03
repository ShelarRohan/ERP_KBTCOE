import 'package:erp_kbtcoe/api/api.dart';
import 'package:erp_kbtcoe/services/sharedpreference.dart';
import 'package:erp_kbtcoe/student/student_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_onboarding_ui/utilities/styles.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// var student_profile;

// class _OnboardingScreenState extends State<OnboardingScreen> {}

// class StudentOnboardScreen extends StatefulWidget {
//   const StudentOnboardScreen({Key? key}) : super(key: key);

//   @override
//   State<StudentOnboardScreen> createState() => _StudentOnboardScreenState();
// }

// var student_profile;

// class _StudentOnboardScreenState extends State<StudentOnboardScreen> {}

class StaffOnboardScreen extends StatefulWidget {
  const StaffOnboardScreen({Key? key}) : super(key: key);

  @override
  State<StaffOnboardScreen> createState() => _StaffOnboardScreenState();
}

var student_profile;

class _StaffOnboardScreenState extends State<StaffOnboardScreen> {
  final UserCardService _userService = UserCardService();
  @override
  void initState() {
    // final id = student_profile.student_data[0];
    // final name = student_profile.student_data[1];
    // final dob = student_profile.student_data[6];

    final PrefService _prefService = PrefService();
    _prefService.readCache();
    print("In load scr widget ");
    print(kbtug);
    print("End In widget");
    student_profile = Student_Profile_Api(kbtug);

    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print(student_profile);
    // print(name);
    // print(dob);
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
    print("//////////////////////////////////////////////////////////////////");
  }

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF5189D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
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
    return Scaffold(
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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Container(
                //   alignment: Alignment.centerRight,
                //   child: ElevatedButton(
                //     onPressed: () => print('Skip'),
                //     child: Text(
                //       'Skip',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20.0,
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  height: 600.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 1, 10, 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/first.jpeg',
                                ),
                                height: 360.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Connect people around the world',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              ' Maratha Vidya Prasarak Samaj Maratha Vidya prasarak Samajs Karmaveer Baburao Ganpatrao Thakare College of Engineering is an Engineering school. ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/second.jpeg',
                                ),
                                height: 360.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              '\t Live your life smarter with us!',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'To educate and train common masses through undergraduate, post graduate, research programs by inculcating the values for discipline, quality and .',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/third.jpeg',
                                ),
                                height: 360.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'Get a new experience of Education',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Multidisciplinary, and Multi-collaborative institute working on technology enabled platform fostering innovations and patents.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 80.0,
              width: double.infinity,
              color: Color(0xFF2D98FC),
              child: GestureDetector(
                onTap: () => print('Get started'),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: ElevatedButton(
                      style: raisedButtonStyle,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => StudentHome(),
                          ),
                        );
                        _userService.createCache(
                            student_profile.student_data[0],
                            student_profile.student_data[1],
                            student_profile.student_data[6],
                            student_profile.student_data[4]);
                      },
                      child: Text('Get Started'),
                    ),
                    // child: Text(
                    //   'Get started',
                    //   style: TextStyle(
                    //     color: Color(0xFFFFFFFF),
                    //     fontSize: 20.0,
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
