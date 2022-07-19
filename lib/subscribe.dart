import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:law_app/hompage.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Subscribe Now!",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "for access to all our lawyers...",
                style: GoogleFonts.lato(
                    color: Color(0xFFc07f00),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "already Subscribed?",
                style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black26,
                      blurRadius: 5),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your subscription code here...',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ElevatedButton(
                  style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.only(left: 30)),
                      fixedSize: MaterialStateProperty.all(Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFc07f00))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Subscribe Now!",
                    style: GoogleFonts.lato(color: Colors.white),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "or",
                style: GoogleFonts.lato(
                    color: Color(0xFFc07f00),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Not yet Subscribed?",
                style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black26,
                      blurRadius: 5),
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your subscription here',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ElevatedButton(
                  style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.only(left: 30)),
                      fixedSize: MaterialStateProperty.all(Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFc07f00))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Subscribe Now!",
                    style: GoogleFonts.lato(color: Colors.white),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
