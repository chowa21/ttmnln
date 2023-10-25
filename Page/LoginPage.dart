// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test01/Page/Done_login.dart';
import 'package:test01/Page/RegisterPage.dart';
import 'package:test01/Page/Resetpass_page.dart';
import 'package:test01/icon/my_flutter_app_icons.dart';
import 'package:test01/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    Icons.login,
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
                  "Enter Username !!",
                  style: GoogleFonts.tiltNeon(
                    fontSize: 22,
                  ),
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),

            //textfield Email
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
                          hintText: ' Username',
                          hintStyle: GoogleFonts.tiltNeon(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //textfield pass
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
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: ' Password',
                          hintStyle: GoogleFonts.tiltNeon(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //confirm button
            GestureDetector(
              onTap: () {
                _navigateToDoneLoginPage(context);
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

            SizedBox(
              height: 60,
            ),

            //text have , reset account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fotgot Your Password ?  ',
                  style: GoogleFonts.tiltNeon(
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _navigateToResetPassPage(context);
                  },
                  child: Text(
                    'Reset Here',
                    style: GoogleFonts.tiltNeon(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 10, 135, 236),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 5,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t Have Accont ?  ',
                  style: GoogleFonts.tiltNeon(
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _navigateToRegisterPage(context);
                  },
                  child: Text(
                    'Register Now !',
                    style: GoogleFonts.tiltNeon(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromARGB(255, 10, 135, 236),
                    ),
                  ),
                ),
              ],
            ),
            //end text have , reset account

            SizedBox(height: 180),

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

void _navigateToRegisterPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => Registerpage(),
  ));
}

void _navigateToResetPassPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ResetPassPage(),
  ));
}

void _navigateToDoneLoginPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => DoneLogin(),
  ));
}
