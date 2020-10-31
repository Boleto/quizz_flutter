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
      'What\'s your favorite color?',
      'What\'s your favorite animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questionText: _questions[_questionIndex]),
            Answer(onPressed: _answerQuestion),
            Answer(onPressed: _answerQuestion),
            Answer(onPressed: _answerQuestion),
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
