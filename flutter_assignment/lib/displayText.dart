import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String message;

  DisplayText(this.message);

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
