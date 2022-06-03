import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
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
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 135,left: 50),
        child: Column(
          children: [
            // Image(
            //   image: NetworkImage(
            //     'https://mossiso.com/wp-content/uploads/2018/12/cropped-android-icon-192x192.png',
            //   ),
            // ),
            Image(
              image: AssetImage(
                'images/user_image.png',
              ),
            ),
            SizedBox(
              height: 40.0,
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
                // letterSpacing: 0.5,
              ),
            ),
            SizedBox(
              height: 24.0
            ),
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
                  secondPage();
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
            // Container(
            //   // margin: EdgeInsets.only(top: 127),
            //   child: ListView(
            //     children: [
            //       ClipPath(
            //         clipper: WaveClipperOne(),
            //         child: Container(
            //           height: 103,
            //           color: Colors.deepPurple,
            //         // child: Center(child: Text("WaveClipperOne()")),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class secondPage extends StatefulWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

