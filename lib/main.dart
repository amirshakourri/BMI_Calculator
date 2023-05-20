import 'package:flutter/material.dart';
import 'package:learning/constans.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  String resultText = '';
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "dana"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(" تو چنده ؟BMI ", style: TextStyle(color: black)),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFF42A5F5),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: weightController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(57, 255, 255, 255)),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: heightController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(57, 255, 255, 255)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightController.text);
                  final height = double.parse(heightController.text);

                  setState(
                    () {
                      result = weight / (height * height);
                      if (result <= 18.5) {
                        resultText = 'underWeight';
                      } else if (result > 18.5 && result <= 24.9) {
                        resultText = 'normalWeight';
                      } else if (result >= 25 && result <= 29.9) {
                        resultText = 'OverWeight';
                      } else {
                        resultText = 'Obesity';
                      }
                    },
                  );
                },
                child: Text(
                  '! محاسبه کن',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '${result.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 64),
              ),
              Text(
                '$resultText',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
