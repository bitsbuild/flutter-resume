import 'package:flutter/foundation.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double appBarTextSize;
    if (kIsWeb && screenWidth > 800) {
      appBarTextSize = screenWidth / 40; // or clamp(screenWidth / 30, 16, 28)
    } else {
      appBarTextSize = screenWidth / 20;
    }
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
              style: GoogleFonts.robotoCondensed(
                textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: appBarTextSize,
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
              'Contact',
              style: GoogleFonts.robotoCondensed(
                textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: appBarTextSize,
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
            style: GoogleFonts.robotoCondensed(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: .5,
                fontSize: appBarTextSize,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(padding: const EdgeInsets.all(12.0), child: wid),
          ),
        ),
      ),
    );
  }
}
