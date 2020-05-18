
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: _MyApp(),
    ),
  );
}

class _MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  List colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue[300],
    Colors.blue[800],
    Colors.deepPurple
  ];
  List colorsName = [
    "red",
    "orange",
    "yellow",
    "green",
    "lightBlue",
    "blue",
    "purple"
  ];

  Random random = new Random();
  int index = 0;
  int colorNew = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(7));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeIndex();
        });
      },
      child: Container(
        color: colors[index],
        child: Center(
          child: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Hey there",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                TextSpan(
                  text: "\n(" + colorsName[index] + ")",
                  style: TextStyle(fontWeight: FontWeight.w300, letterSpacing: 7),
                ),
                //),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
