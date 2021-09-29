import 'package:flutter/material.dart';

class FixtureScreen extends StatelessWidget {
  const FixtureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: const Center(
        child: Text('Fixture'),
      ),
    );
  }
}
