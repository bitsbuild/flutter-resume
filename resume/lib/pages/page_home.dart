import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('1', style: TextStyle(color: Colors.white)),
            Text('2', style: TextStyle(color: Colors.white)),
            Text('3', style: TextStyle(color: Colors.white)),
            Text('4', style: TextStyle(color: Colors.white)),
            Text('5', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
