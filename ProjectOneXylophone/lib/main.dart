import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'XYLOPHONE',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'DancingScript',
              ),
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: SafeArea(
          child: XylophoneApp(),
        ),
      ),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioCache();
  void playSound(int soundValue) {
    player.play("note$soundValue.wav");
  }

  Expanded buildKey(int keyNumber, Color color) => Expanded(
        flex: 3,
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: new Directionality(
              textDirection: TextDirection.ltr,
              child: FlatButton(
                color: color,
                onPressed: () {
                  playSound(keyNumber);
                },
                child: null,
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        buildKey(1, Colors.red),
        buildKey(2, Colors.orange),
        buildKey(3, Colors.yellow),
        buildKey(4, Colors.lime),
        buildKey(5, Colors.green),
        buildKey(6, Colors.teal),
        buildKey(7, Colors.blue),
        // Expanded(
        //   flex: 1,
        //   child: Column(children: <Widget>[
        //     Center(
        //       child: Text(
        //         'Number of questions asked',
        //         style: TextStyle(
        //           fontSize: 25.0,
        //           color: Colors.lightBlue[700],
        //           fontWeight: FontWeight.bold,
        //           fontFamily: 'DancingScript',
        //         ),
        //       ),
        //     ),
        //   ]),
        // ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
              'Created by: Manthankumar Rakholia',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript',
              ),
            ),
          ),
        )
      ]),
    );
  }
}
