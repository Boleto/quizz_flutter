import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String answerText;

  Answer({@required this.onPressed, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(answerText),
      ),
    );
  }
}
