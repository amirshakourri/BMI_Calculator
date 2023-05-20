import 'package:flutter/material.dart';

class TapTest extends StatefulWidget {
  const TapTest({super.key});

  @override
  State<TapTest> createState() => _TapTestState();
}

class _TapTestState extends State<TapTest> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'وزن',
              hintStyle: TextStyle(fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
