import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fourthPage extends StatefulWidget {
  const fourthPage({Key? key}) : super(key: key);

  @override
  State<fourthPage> createState() => _fourthPageState();
}

class _fourthPageState extends State<fourthPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              margin: EdgeInsets.only(top: 122),
              child: Column(
                children: [
                  Text(
                    'Please select your profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.07,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 26.0,
                  ),
                  SizedBox(
                    height: 56,
                    width: 327,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        // label ('Phone Number', style: TextStyle(
                        //   color: ,
                        // ),),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      onChanged: (phone) {
                        print('hello');
                      },
                    ),
                  ),
                  // Flag.fromString('AD', height: 10, width: 100, fit: BoxFit.fill),
                  SizedBox(
                    height: 24,
                    // width: 328,
                  ),
                  SizedBox(
                    height: 56.0,
                    width: 328.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2E3B62),
                        side: BorderSide(width: 260, color: Colors.brown),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const fourthPage()),
                        );
                      },
                      child: Text(
                        'CONTINUE',
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
        ),
      ),
    );
  }
}