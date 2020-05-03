import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  //print("hello");
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  int _totalscore = 0;
  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questiontext': 'Which of these is not an OOP language?',
        'answers': [
          {'text': 'Java', 'score': 0},
          {'text': 'Python', 'score': 0},
          {'text': 'C++', 'score': 0},
          {'text': 'C', 'score': 1}
        ]
      },
      {
        'questiontext': 'Can Main Method be overriden in Java?',
        'answers': [
          {'text': 'Yes', 'score': 1},
          {'text': 'No', 'score': 0}
        ]
      },
      {
        'questiontext': 'Which of these support pointers?',
        'answers': [
          {'text': 'C', 'score': 0},
          {'text': 'C++', 'score': 0},
          {'text': 'Both', 'score': 1},
          {'text': 'None of these', 'score': 0}
        ]
      }
    ];
    void _resetquiz() {
      setState(() {
        _totalscore = 0;
        _index = 0;
      });
    }

    void _answerquestion(int score) {
      _totalscore += score;
      setState(() {
        _index = _index + 1;
      });
      print(_index);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _index < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _index,
                answerQuestion: _answerquestion)
            : Result(_totalscore, _resetquiz),
      ),
    );
  }
}
