import 'package:flutter/material.dart';
import 'package:quizz_flutter/answer.dart';
import 'package:quizz_flutter/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite language',
        'answers': ['Dart', 'Swift', 'Objective-C', 'Kotlin', 'Java'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questionText: _questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                onPressed: _answerQuestion,
                answerText: answer,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }
}
