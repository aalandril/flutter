import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  final String answerText;

  Answer(this.selectedHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        child: Text(answerText),
        onPressed: selectedHandler,
      ),
    );
  }
}
