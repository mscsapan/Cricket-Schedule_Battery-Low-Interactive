import 'package:battery_low_interactive/views/team_name_plus_score.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MatchScheduled extends StatelessWidget {
  final String details;
  final String team1;
  final String team2;
  final String team1Flag;
  final String team2Flag;
  final String team1Score;
  final String team2Score;
  final String result;
  final String streaming;
  final bool streamColor;

  const MatchScheduled({
    Key? key,
    this.streaming = 'LIVE',
    required this.details,
    required this.team1,
    required this.team2,
    required this.team1Flag,
    required this.team2Flag,
    required this.team1Score,
    required this.team2Score,
    required this.result,
    this.streamColor = true,
  }) : super(key: key);

  final String wed14 = 'Wed 14 Mar, 7.30 BDT';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 8.0),
        Text('$details $wed14',
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0)),
        const SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //first team name and scores
            Container(
                width: screenWidth * 0.26,
                alignment: Alignment.centerRight,
                child: TeamPlusScore(team: team1, score: team1Score)),

            //team flag + VS + LIVE
            SizedBox(
              width: screenWidth * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(team1Flag, width: 30.0),
                      const Text('VS',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600)),
                      Image.asset(team2Flag, width: 30.0),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    streaming,
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: streamColor ? Colors.blue : Colors.red),
                  ),
                ],
              ),
            ),
            //second team name and scores
            Container(
              width: screenWidth * 0.26,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  TeamPlusScore(
                      team: team2, score: team2Score, position: false),
                  // const SizedBox(width: 6.0),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth * 0.08,
              child: const FaIcon(FontAwesomeIcons.bell,
                  size: 20.0, color: Colors.grey),
            ),
            //const FaIcon(FontAwesomeIcons.bell, size: 22.0, color: Colors.grey)
          ],
        ),
        Text(
          result,
          style: const TextStyle(fontSize: 16.0),
        ),
        const SizedBox(
          width: 270.0,
          child: Divider(thickness: 0.8, color: Colors.grey),
        ),
      ],
    );
  }
}
