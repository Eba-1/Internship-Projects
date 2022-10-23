import 'package:flag/flag_widget.dart';
import 'package:country_icons/country_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_authentication_app/home_screen.dart';
import 'package:user_authentication_app/third_page.dart';

class secondPage extends StatefulWidget {
  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  TextEditingController _controller = TextEditingController();
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
                  Icons.close,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
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
                    'Please enter your mobile number',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.07,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'You\'ll receive a 4 digit code \n to verify next.',
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
                    height: 32,
                  ),
                  SizedBox(
                    height: 56,
                    width: 327,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      // inputFormatters: [
                      //   LengthLimitingTextInputFormatter(10),
                      // ],
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Image.asset('icons/flags/png/in.png',
                                height: 15.72,
                                width: 24,
                                package: 'country_icons')),
                        prefixText: '+91',
                        // contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      // maxLength: 10,
                      controller: _controller,
                      onChanged: (phone) {},
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
                              builder: (context) =>
                                  thirdPage(_controller.text)),
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
