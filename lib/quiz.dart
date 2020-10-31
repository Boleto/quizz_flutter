import 'package:flutter/material.dart';
import 'package:quizz_flutter/answer.dart';
import 'package:quizz_flutter/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({
    @required this.questionIndex,
    @required this.questions,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            onPressed: () => answerQuestion(answer['score']),
            answerText: answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
