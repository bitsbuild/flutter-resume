import 'package:flutter/material.dart';
import 'package:resume/pages/page_about.dart';
import 'package:resume/pages/page_contacts.dart';
import 'package:resume/pages/page_home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(JashUpadhyay());
}

class JashUpadhyay extends StatelessWidget {
  const JashUpadhyay({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jash Upadhyay',
      home: JashUpadhyayScaffold(),
    );
  }
}

class JashUpadhyayScaffold extends StatefulWidget {
  const JashUpadhyayScaffold({super.key});

  @override
  State<JashUpadhyayScaffold> createState() => _JashUpadhyayScaffoldState();
}

class _JashUpadhyayScaffoldState extends State<JashUpadhyayScaffold> {
  late Widget wid;
  @override
  void initState() {
    super.initState();
    wid = PageHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Container(color: Colors.black),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                wid = PageAbout();
              });
            },
            child: Text(
              'About',
              style: GoogleFonts.eduNswActFoundation(
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .5,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                wid = PageContact();
              });
            },
            child: Text(
              'Contact Me',
              style: GoogleFonts.eduNswActFoundation(
                textStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .5,
                ),
              ),
            ),
          ),
        ],
        title: TextButton(
          onPressed: () {
            setState(() {
              wid = PageHome();
            });
          },
          child: Text(
            'Jash Upadhyay',
            style: GoogleFonts.eduNswActFoundation(
              textStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            child: wid,
          ),
        ),
      ),
    );
  }
}
