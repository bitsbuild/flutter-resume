import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
