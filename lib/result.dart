// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  const Result({
    Key? key,
    required this.totalScore,
    required this.resetQuiz,
  }) : super(key: key);

  String get resultPhrase {
    String phrase = "";

    if (totalScore > 20) {
      // phrase = phrase+ "You did great!";
      phrase += "You did great!";
    } else {
      phrase += "Do better next time!";
    }
    return phrase + "\nWith score of $totalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resetQuiz,
            child: Text(
              "Restart Quiz!",
              style: TextStyle(
                fontSize: 20,
                // backgroundColor: Colors.blueAccent,
                // color: Colors.black,
              ),
            ),
            style: ButtonStyle(
              alignment: Alignment.center,
              backgroundColor: MaterialStateProperty.all(Colors.orange),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
