import 'package:battery_low_interactive/component/component.dart';
import 'package:battery_low_interactive/screens/fixture_screen.dart';
import 'package:battery_low_interactive/screens/result_screen.dart';
import 'package:flutter/material.dart';

import 'live_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String bangladesh = 'assets/flags/bd.png';
  final String pakistan = 'assets/flags/pk.png';
  final String sriLanka = 'assets/flags/lk.png';
  final String india = 'assets/flags/in.png';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/logo.png', height: 40.0),
          backgroundColor: mTransparent,
          elevation: 0.0,
          foregroundColor: mTeenColor,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: getTabs.preferredSize,
            child: ColoredBox(child: getTabs, color: mOrangePeel),
          ),
        ),
        body: const TabBarView(
          children: [
            LiveScreen(),
            FixtureScreen(),
            ResultScreen(),
          ],
        ),
      ),
      length: 3,
      initialIndex: 0,
    );
  }
}
