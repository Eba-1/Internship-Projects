import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_authentication_app/second_page.dart';
import 'package:user_authentication_app/fourth_page.dart';
import 'package:pinput/pinput.dart';

class thirdPage extends StatefulWidget {
  final String phone;
  final _pinPutController = TextEditingController();
  thirdPage(this.phone);
  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Container(
              // margin: EdgeInsets.only(left: 8),
              child: InkWell(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => secondPage()),
                  );
                },
              ),
            ),
          ),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Verify Phone',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.07,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Code is sent to ${widget.phone}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff6A6C7B),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.07,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      // letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  // SizedBox(
                  //   height: 56,
                  //   width: 327,
                  //   child: TextField(
                  //     keyboardType: TextInputType.number,
                  //     decoration: InputDecoration(
                  //       // label ('Phone Number', style: TextStyle(
                  //       //   color: ,
                  //       // ),),
                  //       border: OutlineInputBorder(
                  //         borderSide: BorderSide(),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // darkRoundedPinPut(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 48,
                        width: 48,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blue.shade100,
                            counter: Offstage(),
                          ),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 1) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 1) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: TextFormField(
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 1) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                    // width: 328,
                  ),
                  Text(
                    'Didn\'t receive the code? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff6A6C7B),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.07,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      // letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 24,
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
                        'VERIFY AND CONTINUE',
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

// _textField({bool first, last}) {
//   return Container(
//     height: 85,
//     child: AspectRatio(
//       aspectRatio: 1.0,
//       child: TextField(
//         autofocus: true,
//         onChanged: (value) {
//           if (value.length == 1 && last == false) {
//             FocusScope.of(context).nextFocus();
//           }
//           if (value.length == 1 && first == false) {
//             FocusScope.of(context).previousFocus();
//           }
//         },
//         showCursor: false,
//         readOnly: false,
//         textAlign: TextAlign.center,
//         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
//         keyboardType: TextInputType.number,
//         maxLength: 1,
//         decoration: InputDecoration(
//           counter: Offstage(),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(width: 2, color: Colors.grey),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderSide: BorderSide(width: 2, color: Colors.grey),
//           ),
//         ),
//       ),
//     ),
//   );
// }
