import 'dart:math';

import 'package:flutter/material.dart';

int leftDiceNumber = 1;
int rightDiceNumber = 1;

void main() {
  return runApp(mainBody());
}

class mainBody extends StatefulWidget {
  @override
  _mainBodyState createState() => _mainBodyState();
}

class _mainBodyState extends State<mainBody> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              leftDiceNumber = Random().nextInt(6) + 1;
              rightDiceNumber = Random().nextInt(6) + 1;
            });
          },
          tooltip: 'Shuffle',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("images/dice$leftDiceNumber.png"),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset("images/dice$rightDiceNumber.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
