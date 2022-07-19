import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_app/Signin.dart';
import 'package:law_app/hompage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Image.asset(
                'assets/images/justice.png',
                height: 120,
                width: 120,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                padding: EdgeInsets.only(left: 30),
                child: Text("TheLaw",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 50,
            ),
            Container(
                padding: EdgeInsets.only(left: 30),
                child: Text("Getting a lawyer\nJust got easier",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 30),
                child: Text("Now you can be heard. Find\n a lawyer near you",
                    style:
                        GoogleFonts.lato(color: Colors.white, fontSize: 16))),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.only(left: 30)),
                      fixedSize: MaterialStateProperty.all(Size(300, 50)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.lato(color: Color(0xFFc07f00)),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
