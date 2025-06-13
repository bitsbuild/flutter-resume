import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PageContact extends StatefulWidget {
  const PageContact({super.key});

  @override
  State<PageContact> createState() => _PageContactState();
}

class _PageContactState extends State<PageContact> {
  late double iconSize;
  late double textSize;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (kIsWeb && screenWidth > 800) {
      textSize = screenWidth / 40;
      iconSize = screenWidth / 5;
    } else {
      textSize = screenWidth / 20;
      iconSize = screenWidth / 5;
    }
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'GitHub',
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontSize: textSize,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse('https://github.com/bitsbuild'));
                },
                child: Image.network(
                  'https://img.icons8.com/arcade/$iconSize/github.png',
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'LinkedIn',
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontSize: textSize,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(
                    Uri.parse('https://www.linkedin.com/in/jashupadhyay/'),
                  );
                },
                child: Image.network(
                  'https://img.icons8.com/3d-fluency/$iconSize/linkedin--v1.png',
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Instagram',
                style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontSize: textSize,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchUrl(
                    Uri.parse('https://www.instagram.com/jashupadhyay_/'),
                  );
                },
                child: Image.network(
                  'https://img.icons8.com/3d-fluency/$iconSize/instagram-new.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
