import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]["questionText"] as String,
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              selectHandler: () => answerQuestion(answer["score"]),
              answerText: answer["text"] as String,
            );
          },
        ).toList()
      ],
    );
  }
}
