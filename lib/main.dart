import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Blue', 'Green', 'White'],
      },
      {
        'questionText': 'Whats\'s your favorite animal?',
        'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Whats\'s your favorite instructure?',
        'answer': ['Max', 'Max', 'Max', 'Max'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]['questionText']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
