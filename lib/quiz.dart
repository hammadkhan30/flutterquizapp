import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz ({
    @required this.question,
    @required this.answerQuestion,
    @required this.questionIndex,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        ...(question[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(answerQuestion, answer['text']);
        }).toList()
      ],
    );
  }
}
