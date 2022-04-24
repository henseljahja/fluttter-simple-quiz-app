// ignore_for_file: unnecessary_const, avoid_print, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  @override
  // State<MainApp> createState() => _MainAppState();
  State<MainApp> createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State<MainApp> {
  final List<Map<dynamic, dynamic>> _questions = const [
    {
      "questionText": "What's your favorite food?",
      "answers": [
        {
          "text": "Pizza",
          "score": 10,
        },
        {
          "text": "Fried Chicken",
          "score": 20,
        },
        {
          "text": "Tofu",
          "score": 10,
        },
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {
          "text": "Dog",
          "score": 10,
        },
        {
          "text": "Cat",
          "score": 20,
        },
        {
          "text": "Chicken",
          "score": 30,
        },
      ],
    },
    {
      "questionText": "What's your favorite sport?",
      "answers": [
        {
          "text": "Tennis",
          "score": 10,
        },
        {
          "text": "Basketball",
          "score": 20,
        },
        {
          "text": "Football",
          "score": 30,
        },
      ],
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    print("Question index at $_questionIndex");

    setState(() {
      _totalScore += score;

      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

    print("Question Index reset at $_questionIndex");
    print("Total score reset at $_totalScore");
  }

  @override
  Widget build(BuildContext context) {
    var quiz = Quiz(
      questions: _questions,
      questionIndex: _questionIndex,
      answerQuestion: _answerQuestion,
    );

    var result = Result(
      totalScore: _totalScore,
      resetQuiz: _resetQuiz,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz",
          ),
        ),
        body: _questionIndex < _questions.length ? quiz : result,
      ),
    );
  }
}
