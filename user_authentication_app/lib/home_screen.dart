import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
// import 'package:user_authentication_app/main.dart';
import 'package:user_authentication_app/second_page.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'French',
    'Hindi',
    'Arabic',
    'Spanish',
  ];
  // firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  //
  // void signup() async {
  //   try {
  //     await firebaseAuth.signInWithPhoneNumber("7349365957");
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: [Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 122, left: 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 42,
                      width: 42,
                      child: Image(
                        image: AssetImage(
                          'images/user_image.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 39.0,
                    ),
                    Text(
                      'Please select your Language',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'You can change the language \n at any time.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff6A6C7B),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Container(
                      height: 48,
                      width: 216,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff2F3037), width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            value: dropdownvalue,
                            decoration: InputDecoration(
                              // border: Border.all(color: Colors.black38, width:3),
                            ),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle(
                                    fontFamily: 'Monstserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    SizedBox(
                      height: 48.0,
                      width: 216.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff2E3B62),
                          side: BorderSide(width: 260, color: Colors.brown),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => secondPage()),
                          );
                        },
                        child: Text(
                          'NEXT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: new Stack(
                children: [
                  Sinusoidal(
                    model: const SinusoidalModel(
                      formular: WaveFormular.standing,
                      amplitude: 25,
                      waves: 2.5,
                      frequency: 2.0,
                    ),
                    child: Container(
                      height: 100,
                      color: Color(0xff2E3B62).withOpacity(0.5),
                    ),
                  ),
                  Sinusoidal(
                    model: const SinusoidalModel(
                      formular: WaveFormular.standing,
                      amplitude: 25,
                      waves: 2.5,
                      frequency: 1.5,
                    ),
                    child: Container(
                      height: 100,
                      color: Color(0xff93D2F3).withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}