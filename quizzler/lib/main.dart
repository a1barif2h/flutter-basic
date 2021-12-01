// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizzler/quize_brain.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: QuizePage(),
      ),
    );
  }
}

class QuizePage extends StatefulWidget {
  const QuizePage({Key? key}) : super(key: key);

  void checkIsEnd() {
    print('is end');
  }

  @override
  _QuizePageState createState() => _QuizePageState();
}

class _QuizePageState extends State<QuizePage> {
  QuizeBrains quizeBrains = QuizeBrains();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
              child: Center(
                child: Text(
                  quizeBrains.getQuestion(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    bool acctualAnswer = quizeBrains.getAnswer();

                    quizeBrains.nextQuestion(
                        acctualAnswer == true
                            ? Icon(
                                Icons.check,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                        context);
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    bool acctualAnswer = quizeBrains.getAnswer();
                    quizeBrains.nextQuestion(
                        acctualAnswer == false
                            ? Icon(
                                Icons.check,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.close,
                                color: Colors.red,
                              ),
                        context);
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Row(
            children: quizeBrains.getScoreKepper(),
          ),
        ],
      ),
    );
  }
}
