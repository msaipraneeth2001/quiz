import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              const TextStyle(color: Colors.black),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.left,
        ),
        //selectHandler(),
      ),
    ); //Container
  }
}
