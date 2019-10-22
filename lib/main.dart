import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite color',
      'What\'s your favourite animal?'
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
            Text(
              question[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
