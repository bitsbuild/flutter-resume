import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    late double homeTextSize;
    var screenWidth = MediaQuery.of(context).size.width;
    if (kIsWeb && screenWidth > 800) {
      homeTextSize = 40;
    } else {
      homeTextSize = screenWidth / 21;
    }
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              '{',
              style: TextStyle(color: Colors.white, fontSize: homeTextSize),
            ),

            Row(
              children: [
                Text(
                  '  "Name": ',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: homeTextSize,
                  ),
                ),
                Text(
                  '"Jash Upadhyay",',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: homeTextSize,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  '  "Role": ',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: homeTextSize,
                  ),
                ),
                Text(
                  '"Backend Developer",',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: homeTextSize,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  '  "Specialization": ',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: homeTextSize,
                  ),
                ),
                Text(
                  '"Python (DRF)",',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: homeTextSize,
                  ),
                ),
              ],
            ),

            Text(
              '}',
              style: TextStyle(color: Colors.white, fontSize: homeTextSize),
            ),
          ],
        ),
      ),
    );
  }
}
