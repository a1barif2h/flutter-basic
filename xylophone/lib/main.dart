import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  Expanded getSoundButton({Color? btnColor, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(color: btnColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getSoundButton(btnColor: Colors.red, soundNumber: 1),
              getSoundButton(btnColor: Colors.orange, soundNumber: 2),
              getSoundButton(btnColor: Colors.yellow, soundNumber: 3),
              getSoundButton(btnColor: Colors.green, soundNumber: 4),
              getSoundButton(btnColor: Colors.teal, soundNumber: 5),
              getSoundButton(btnColor: Colors.blue, soundNumber: 6),
              getSoundButton(btnColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
