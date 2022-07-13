import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Q1. What does ISRO stands for?',
      'answers': [
        {'text': 'Indian Science Research Organization', 'score': -1},
        {'text': 'Israel Space Research Organization', 'score': -1},
        {'text': 'Indian Space Research Organization', 'score': 1},
        {'text': 'Indonesia Space Research Organization', 'score': -1},
      ],
    },
    {
      'questionText': 'Q2. What is the Capital of India?',
      'answers': [
        {'text': 'Mumbai', 'score': -1},
        {'text': 'Kolkata', 'score': -1},
        {'text': 'Hyderabad', 'score': -1},
        {'text': 'New Delhi', 'score': 1},
      ],
    },
    {
      'questionText': ' Q3. What is the National Animal of India',
      'answers': [
        {'text': 'Elephant', 'score': -1},
        {'text': 'Lion', 'score': -1},
        {'text': 'Royal Bengal Tiger', 'score': 1},
        {'text': 'Bear', 'score': -1},
      ],
    },
    {
      'questionText': 'Q4. In which year India got independence?',
      'answers': [
        {'text': '1947', 'score': 1},
        {'text': '1950', 'score': -1},
        {'text': '1946', 'score': -1},
        {'text': '1953', 'score': -1},
      ],
    },
    {
      'questionText': 'Q5. Is India a part of Asia Subcontinent?',
      'answers': [
        {
          'text': 'Yes',
          'score': 1,
        },
        {'text': 'No', 'score': -1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'GK Quiz App',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.left,
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
