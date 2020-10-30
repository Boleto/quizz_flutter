import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

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
            Text(_questions[questionIndex]),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }
}
