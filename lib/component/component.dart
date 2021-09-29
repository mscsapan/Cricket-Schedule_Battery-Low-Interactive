import 'package:flutter/material.dart';

const mGreenColor = Color(0xFF00320c);
const mKaitokeGreen = Color(0xFF004d21);
const mFunGreen = Color(0xFF00613a);
const mOrangePeel = Color(0xFFf79a00);
const mTeenColor = Color(0xFFd66100);
const mWhiteIce = Color(0xFFd4f8ec);
const mTransparent = Colors.transparent;

//team name style
countryStyle() => const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);

TabBar get getTabs => const TabBar(
        indicatorColor: Colors.green,
        indicatorWeight: 4.0,
        unselectedLabelColor: Colors.black87,
        tabs: [
          Tab(text: 'LIVE'),
          Tab(text: 'FIXTURE'),
          Tab(text: 'RESULT'),
        ]);
