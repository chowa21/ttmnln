// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test01/Page/Done_Register.dart';
import 'package:test01/Page/LoginPage.dart';
import 'package:test01/Page/Profile.dart';
import 'package:test01/main.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 229, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
            height: 80,
          ),

          Column(
            children: [
              Icon(
                Icons.confirmation_num,
                color: Color.fromARGB(255, 23, 115, 235),
                size: 120.0,
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          //Hi text

          Text(
            'Register',
            style: GoogleFonts.tiltNeon(fontSize: 35),
          ),

          SizedBox(
            height: 30,
          ),

          //user textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 231, 231),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(11),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ' Username',
                  hintStyle: GoogleFonts.tiltNeon(fontSize: 18),
                  noSaved:(String username){
                        profile.username = username;
                      },
                ),
              ),
            ),
          ),

          SizedBox(
            height: 5,
          ),

          //password textfiled
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 231, 231),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(11)),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ' Password',
                  hintStyle: GoogleFonts.tiltNeon(fontSize: 18),
                  noSaved:(String password){
                        profile.password = password;
                      },
                ),
              ),
            ),
          ),

          SizedBox(
            height: 5,
          ),

          //confirm password textfiled
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 231, 231),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(11)),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ' confirm Password',
                  hintStyle: GoogleFonts.tiltNeon(fontSize: 18),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          //sing in button
          GestureDetector(
            onTap: () {
              _navigateToDoneRegisterPage(context);
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
                        color: Colors.white,
                        fontSize: 18),
                        onPressed: (){
                    formKey.currentState.save();
                    print("username = ${profile.username} password = ${profile.password}");
                  },
                  ))),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an Account ?   ',
                style: GoogleFonts.tiltNeon(
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _navigateToLoginPage(context);
                },
                child: Text(
                  ' Back To Login',
                  style: GoogleFonts.tiltNeon(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromARGB(255, 10, 135, 236),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 204),

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
      ),
    );
  }
}

void _navigateToMyHomePage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => MyApp(),
  ));
}

void _navigateToLoginPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => LoginPage(),
  ));
}

void _navigateToDoneRegisterPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => DoneRegister(),
  ));
}
