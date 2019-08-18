import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final List<String> _allDiceAssets = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];
  int leftDiceStateIndex = 0;
  int rightDiceStateIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('I was called');
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () => rollAllDice(),
                child: Image.asset(_allDiceAssets[leftDiceStateIndex]),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => rollAllDice(),
                child: Image.asset(_allDiceAssets[rightDiceStateIndex]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void rollOneDice(String chosenDice) {
    int newRoll = Random().nextInt(6);
    switch (chosenDice.toUpperCase()) {
      case "LEFT":
        setState(() {
          leftDiceStateIndex = newRoll;
        });
        break;
      case "RIGHT":
        setState(() {
          rightDiceStateIndex = newRoll;
        });
        break;
      default:
    }
  }

  void rollAllDice() {
    rollOneDice('LEFT');
    rollOneDice('RIGHT');
  }
}
