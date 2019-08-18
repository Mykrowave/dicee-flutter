import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () => print('Left Dice Clicked'),
                child: Image.asset('images/dice1.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => print('Right Dice Clicked'),
                child: Image.asset('images/dice6.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
