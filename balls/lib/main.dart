import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const BallsPage(),
      ),
    );
  }
}

class BallsPage extends StatefulWidget {
  const BallsPage({Key? key}) : super(key: key);

  @override
  _BallsPageState createState() => _BallsPageState();
}

class _BallsPageState extends State<BallsPage> {
  int ballsNumber = 1;

  void changeBalls() {
    setState(() {
      ballsNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBalls();
              },
              child: Image.asset('images/ball$ballsNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
