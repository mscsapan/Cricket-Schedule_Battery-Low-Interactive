import 'package:battery_low_interactive/screens/cricket_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class YourChoice extends StatelessWidget {
  const YourChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth * 0.8,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen())),
                child: const Text('PART A'),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.8,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CricketScreen())),
                child: const Text('PART B'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
