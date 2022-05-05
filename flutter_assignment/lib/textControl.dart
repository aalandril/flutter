import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function onClickHandler;

  TextControl(this.onClickHandler);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Change Text!'),
      onPressed: onClickHandler,
    );
  }
}
