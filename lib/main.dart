import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumb = 2;
  int rigthDiceNum = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    onPressed: (){
                      print('Left Button');
                      setState(() {
                        leftDiceNumb = Random().nextInt(6) + 1;
                      });
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage('images/dice$leftDiceNumb.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        rigthDiceNum = Random().nextInt(6) + 1;
                      });
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage('images/dice$rigthDiceNum.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
