import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  Question({@required this.question});

  @override
  Widget build(BuildContext context) {
    return Text(question);
  }
}
