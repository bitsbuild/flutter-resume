import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageAbout extends StatefulWidget {
  const PageAbout({super.key});

  @override
  State<PageAbout> createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    late double textSize;
    if (kIsWeb && screenWidth > 800) {
      textSize = screenWidth / 55;
    } else {
      textSize = screenWidth / 23;
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Text(
              '''
      I'm a backend-focused developer with hands-on experience in Django REST Framework, Flutter, MySQL, Docker, Kubernetes, Firebase, and GitHub Actions. My approach revolves around building robust, maintainable systems with clarity and precision. I'm always eager to explore new technologies and bring efficient solutions to life.
      
      Currently pursuing my B.Tech in Computer Engineering from NMIMS (Deemed-to-be University), I’m part of the 2026 graduating batch. Over the years, I’ve cultivated a strong passion for backend architecture and full-stack integration, always looking to bridge the gap between product needs and system design.
      
      Beyond code, I’m deeply passionate about cricket, public speaking, and participating in Model United Nations. I enjoy stepping into new environments, engaging with diverse perspectives, and learning through rich experiences. Meeting people from different walks of life is something I genuinely value—it fuels both my curiosity and creativity.
            ''',
              style: GoogleFonts.robotoCondensed(
                textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: .5,
                  fontSize: textSize,
                ),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
