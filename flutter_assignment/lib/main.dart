import 'package:flutter/material.dart';

import './displayText.dart';
import './textControl.dart';

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _textToDisplay = 'This is my default text';

  void _onClickHandler() {
    setState(() {
      _textToDisplay = 'New Text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
      ),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      title: Text('My First App'),
    );
  }

  Widget buildBody() {
    return Center(
      child: Column(
        children: <Widget>[
          DisplayText(_textToDisplay),
          TextControl(_onClickHandler),
        ],
      ),
    );
  }
}
