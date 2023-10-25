// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test01/Page/RegisterPage.dart';
import 'package:test01/icon/my_flutter_app_icons.dart';
import 'Page/LoginPage.dart';
import 'Page/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 196, 236, 249),
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
              height: 200,
            ),

            //chat icon
            Column(
              children: [
                Center(
                  child: Icon(
                    Icons.chat,
                    color: Color.fromARGB(255, 23, 115, 235),
                    size: 120.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Column(
              children: [
                Text(
                  "Welcome To MyApp",
                  style: GoogleFonts.tiltNeon(
                    fontSize: 22,
                  ),
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            //chat icon
            //login button
            GestureDetector(
              onTap: () {
                _navigateToLoginPage(context);
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
                      'Login',
                      style: GoogleFonts.tiltNeon(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ))),
              ),
            ),
            //end login button
            Column(
              children: [
                Text(
                  "or",
                  style: GoogleFonts.tiltNeon(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),

            SizedBox(
              height: 5,
            ),

            //register button
            GestureDetector(
              onTap: () {
                _navigateToRegisterPage(context);
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
                      'Register',
                      style: GoogleFonts.tiltNeon(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ))),
              ),
            ),
            //register button
          ],
        ));
  }
}

void _navigateToLoginPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => LoginPage()));
}

void _navigateToRegisterPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => Registerpage(),
  ));
}
