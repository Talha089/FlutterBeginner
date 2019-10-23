import 'package:flutter/material.dart';
import 'package:flutterbeginner/result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answers': ['Red', 'Blue', 'Green', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Zebra', 'Tiger', 'Dog', 'Cat']
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': ['Zeeshan', 'Nouman', 'Bilal', 'Mohsin']
    },
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more Questions");
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeda Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
