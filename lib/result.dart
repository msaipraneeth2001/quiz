import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 4) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 3) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 2) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          TextButton(
            onPressed: resetHandler,
            child: Container(
              color: Colors.lightBlue,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
