import 'package:battery_low_interactive/component/component.dart';
import 'package:flutter/material.dart';

class TeamPlusScore extends StatelessWidget {
  final String team;
  final String score;
  final bool position;

  const TeamPlusScore(
      {Key? key, required this.team, required this.score, this.position = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          position ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(team,
            style: TextStyle(
                fontSize: team.length > 8 ? 17.0 : 20.0,
                fontWeight: FontWeight.bold)),
        Text(score, style: countryStyle())
      ],
    );
  }
}
