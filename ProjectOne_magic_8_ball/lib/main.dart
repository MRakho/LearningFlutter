import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: Center(child: Text('Magic 8 Ball')),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: MagicEightBall(),
      ),
    ),
  );
}

class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int answer = 0;
  int questionsAskedCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Do You Have a Question For me?',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.lightBlue[700],
              fontWeight: FontWeight.bold,
              fontFamily: 'DancingScript',
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    updateDice();
                  },
                  child: Image.asset('images/ball$answer.png'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(children: <Widget>[
            Center(
              child: Text(
                'Number of questions asked : $questionsAskedCounter',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.lightBlue[700],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript',
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Created by: Manthankumar Rakholia',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.lightBlue[900],
              fontWeight: FontWeight.bold,
              fontFamily: 'DancingScript',
            ),
          ),
        )
      ]),
    );
  }

  void updateDice() {
    setState(() {
      answer = Random().nextInt(5) + 1;
      questionsAskedCounter = questionsAskedCounter + 1;
    });
  }
}
