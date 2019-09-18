import 'package:flutter/material.dart';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatelessWidget {
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
                  child: Image(
                    image: AssetImage('images/dice1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage('images/dice2.png'),
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
