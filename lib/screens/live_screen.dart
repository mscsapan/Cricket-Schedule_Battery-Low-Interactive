import 'package:battery_low_interactive/component/component.dart';
import 'package:battery_low_interactive/views/match_scheduled.dart';
import 'package:battery_low_interactive/views/title_container.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key}) : super(key: key);
  final String bangladesh = 'assets/flags/bd.png';
  final String pakistan = 'assets/flags/pk.png';
  final String sriLanka = 'assets/flags/lk.png';
  final String india = 'assets/flags/in.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(
          children: [
            const TitleContainer(title: 'International', color: mKaitokeGreen),
            MatchScheduled(
              details: '2nd Test, Freedom Series,',
              team1: 'Pakistan',
              team2: 'Sri Lanka',
              team1Flag: pakistan,
              team2Flag: sriLanka,
              team1Score: '20/5*',
              team2Score: '150/7',
              result: 'SriLanka need 100 runs to win',
            ),
            const SizedBox(height: 6.0),
            MatchScheduled(
              details: '5th T20i Match,Nidahas Trophy,',
              team1: 'Bangladesh',
              team2: 'India',
              team1Flag: bangladesh,
              team2Flag: india,
              team1Score: '200/5*',
              team2Score: '300/10',
              result: 'Bangladesh need 100 runs to win',
            ),
            const SizedBox(height: 6.0),
            MatchScheduled(
              details: '5th Match, Tri Nation,',
              team1: 'Pakistan',
              team2: 'Sri Lanka',
              team1Flag: pakistan,
              team2Flag: sriLanka,
              team1Score: '200/5*',
              team2Score: '300/10',
              result: 'Bangladesh need 100 runs to win',
            ),
            const SizedBox(height: 6.0),
            MatchScheduled(
              details: '10th Match, Tri Nation,',
              team1: 'India',
              team2: 'Bangladesh',
              team1Flag: india,
              team2Flag: bangladesh,
              streaming: 'STUMPS',
              streamColor: false,
              team1Score: '200/5*',
              team2Score: '300/10',
              result: 'Day 1: Bangladesh need 100 runs to win',
            ),
            const TitleContainer(title: 'Domestic', color: mFunGreen),
          ],
        ))
      ],
    );
  }
}
