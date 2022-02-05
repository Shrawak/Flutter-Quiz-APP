// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hello/result.dart';

import 'quiz.dart';
import 'result.dart';
// void main ()
// {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 11},
        {'text': 'White', 'score': 12}
      ]
    }, //dictionary or map
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 11},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 12}
      ]
    },
    {
      'questionText': 'What\'s your favorite number?',
      'answers': [
        {'text': '39', 'score': 15},
        {'text': '7', 'score': 15},
        {'text': '10', 'score': 15}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app '),
          backgroundColor: Colors.cyan,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore , _resetQuiz),
      ),
    );
  }
}
