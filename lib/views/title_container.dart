import 'package:battery_low_interactive/component/component.dart';
import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  final String title;
  final Color color;
  const TitleContainer({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          color: mWhiteIce,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
