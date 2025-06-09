import 'package:flutter/material.dart';
import 'package:resume/pages/page_about.dart';
import 'package:resume/pages/page_contacts.dart';
import 'package:resume/pages/page_home.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: [PageHome(), PageAbout(), PageContact()],
      ),
    );
  }
}
