import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!!!';

    if (resultScore <= 15) {
      resultText = 'You are awesome and innocent!!';
    } else if (resultScore <= 26) {
      resultText = 'Pretty likeable!!';
    } else if (resultScore <= 50) {
      resultText = 'You are ... Strange!!';
    } else {
      resultText = 'You are so bad!!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            onPressed: resetHandler,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
