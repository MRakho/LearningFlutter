import 'package:flutter/material.dart';

/// Objective: This class is the main class to launch the app.
//
// Created by Manthan on 10/1/2020.
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("I Am Hemaxi")),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(50),
                child: Image(
                  image: AssetImage('images/hema.jpeg'),
                ),
              ),
              Text(
                'I Like To Heran Manthan',
                style: TextStyle(
                  fontSize: 25,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.blue[100],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
