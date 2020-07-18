import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(DicePage());

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeTheDices() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dice'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                      changeTheDices();
                    }),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    changeTheDices();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class DiceApp extends StatelessWidget {}
