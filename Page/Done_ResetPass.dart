// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test01/Page/Resetpass_page.dart';
import 'package:test01/main.dart';

class DoneResetPass extends StatefulWidget {
  const DoneResetPass({super.key});

  @override
  State<DoneResetPass> createState() => _DoneResetPassState();
}

class _DoneResetPassState extends State<DoneResetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 229, 255),
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
                  'Sended To Your Email !',
                  style: GoogleFonts.tiltNeon(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'We sended the link into your email',
                  style: GoogleFonts.tiltNeon(fontSize: 18),
                ),
                Text(
                  'Please check you mail box ',
                  style: GoogleFonts.tiltNeon(fontSize: 18),
                ),
                Text(
                  'if you don\'t see any email of us  ',
                  style: GoogleFonts.tiltNeon(fontSize: 18),
                ),
                Text(
                  'Please check junk box ',
                  style: GoogleFonts.tiltNeon(fontSize: 18),
                ),
              ],
            ),
          ],
        ),

        SizedBox(
          height: 10,
        ),

        Column(
          children: [
            Text(
              'Or',
              style: GoogleFonts.tiltNeon(
                  fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),

        GestureDetector(
          onTap: () {
            _navigateToResetPassPage(context);
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
                  'Resend Link Again',
                  style: GoogleFonts.tiltNeon(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ))),
          ),
        ),

        SizedBox(
          height: 245,
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

void _navigateToResetPassPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ResetPassPage(),
  ));
}
