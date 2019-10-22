import 'package:flutter/material.dart';
import 'package:flutterbeginner/answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
