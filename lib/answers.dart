import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answertext;
  Answer(this.selectHandler, this.answertext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answertext,
          style: TextStyle(fontSize: 18),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
