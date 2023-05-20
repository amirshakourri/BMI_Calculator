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
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text("${counter}"),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Text('click'),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Text('ckicj'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
