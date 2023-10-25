// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test01/Page/Done_Register.dart';
import 'package:test01/Page/Done_ResetPass.dart';
import 'package:test01/Page/RegisterPage.dart';
import 'package:test01/icon/my_flutter_app_icons.dart';
import 'package:test01/main.dart';

class ResetPassPage extends StatefulWidget {
  const ResetPassPage({super.key});

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 144, 229, 255),
        body: Column(
          children: [
            //Login_BAR
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 146, 190),
                ),
                child: Center(
                    child: Text(
                  'Login App',
                  style:
                      GoogleFonts.tiltNeon(fontSize: 22, color: Colors.white),
                ))),
            //Login_BAR
            SizedBox(
              height: 130,
            ),
            //chat icon
            Column(
              children: [
                Center(
                  child: Icon(
                    Icons.email_rounded,
                    color: Color.fromARGB(255, 23, 115, 235),
                    size: 120.0,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            //text 'Enter username'
            Column(
              children: [
                Text(
                  "Reset Password !!",
                  style: GoogleFonts.tiltNeon(
                    fontSize: 22,
                  ),
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

            Column(
              children: [
                Text('Enter Your Email in the box '),
                Text('We\'ll Send Reset Link To Your Email'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '!! PLEASE ',
                      style: GoogleFonts.tiltNeon(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Don\'t give it to others.')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 231, 231),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Center(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Enter Your Email here',
                          hintStyle: GoogleFonts.tiltNeon(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //confirm button
            GestureDetector(
              onTap: () {
                _navigateToDoneResetPassPage(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 35, 146, 190),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(11)),
                    child: Center(
                        child: Text(
                      'Confirm',
                      style: GoogleFonts.tiltNeon(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ))),
              ),
            ),

            SizedBox(height: 268),
            //bot icon
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 146, 190),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          _navigateToMyHomePage(context);
                        },
                        child: Icon(
                          Icons.home,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 280,
                      ),
                      Icon(
                        Icons.settings,
                        size: 40,
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}

void _navigateToMyHomePage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => MyApp(),
  ));
}

void _navigateToDoneResetPassPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => DoneResetPass(),
  ));
}
