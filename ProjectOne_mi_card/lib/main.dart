import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[700],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/hema2.jpg'),
                  radius: 80.0,
                ),
                Text(
                  'Hemaxi Rakholia',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DancingScript',
                  ),
                ),
                Text(
                  'THE SWEET ONE',
                  style: TextStyle(fontSize: 20.0, color: Colors.teal[200], fontWeight: FontWeight.normal, fontFamily: 'Roboto', letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 25.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal[200],
                  ),
                ),
                Container(),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '1-(309)-350-9734',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.teal[500],
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'hemaxikathrotia12@gmail.com',
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.teal[500],
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// child: Row(
// children: <Widget>[
// Icon(
// Icons.email,
// color: Colors.teal[900],
// ),
// SizedBox(
// width: 10.0,
// ),
// Text(
// 'helo@gmail.com',
// style: TextStyle(
// fontSize: 17.0,
// color: Colors.teal[500],
// fontWeight: FontWeight.normal,
// fontFamily: 'Roboto',
// ),
// ),
// ],
// ),

// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.center,

// home: Scaffold(
// backgroundColor: Colors.teal,
// body: SafeArea(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: <Widget>[
// Container(
// height: double.infinity,
// width: 100.0,
// color: Colors.red,
// ),
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.yellow,
// ),
// Container(
// height: 100.0,
// width: 100.0,
// color: Colors.green,
// ),
// ],
// ),
// ),
// Container(
// height: double.infinity,
// width: 100.0,
// color: Colors.blue,
// ),
// ],
// ),
// ),
// ),
