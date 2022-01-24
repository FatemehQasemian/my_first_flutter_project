import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Dicee'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void ChangeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {
                ChangeDiceFace();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {
                ChangeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
