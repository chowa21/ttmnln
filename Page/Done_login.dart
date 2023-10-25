// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test01/main.dart';

class DoneLogin extends StatefulWidget {
  const DoneLogin({super.key});

  @override
  State<DoneLogin> createState() => _DoneLoginState();
}

class _DoneLoginState extends State<DoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 218, 246),
      body: Column(children: [
        Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 146, 190),
            ),
            child: Center(
                child: Text(
              'Login App',
              style: GoogleFonts.tiltNeon(fontSize: 22, color: Colors.white),
            ))),
        //icon
        SizedBox(
          height: 280,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.tiltNeon(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'You\'re Logged in',
                  style: GoogleFonts.tiltNeon(fontSize: 25),
                ),
              ],
            ),
          ],
        ),

        SizedBox(
          height: 410,
        ),

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
      ]),
    );
  }
}

void _navigateToMyHomePage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => MyApp(),
  ));
}
