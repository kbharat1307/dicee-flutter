import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNumber = 1;
  int rightButtonNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftButtonNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftButtonNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightButtonNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightButtonNumber.png'),
            ),
          ),
        ],
      ),
    ));
  }
}
