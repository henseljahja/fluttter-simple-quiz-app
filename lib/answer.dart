// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
  }) : super(key: key);

  // const Answer({Key? key}) : super(key: key);

  final selectHandler;
  String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: Text(
            answerText,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: selectHandler,
        ));
  }
}
