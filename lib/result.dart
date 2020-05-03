import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ts;
  final Function reset;
  Result(this.ts, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "Your Score is $ts !!",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              "Reset Quiz",
              style: TextStyle(fontSize: 27),
            ),
            textColor: Colors.blue,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
