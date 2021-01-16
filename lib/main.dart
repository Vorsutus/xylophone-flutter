import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKey(int note, Color noteColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        color: noteColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //stretches the width
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.lightGreen),
              buildKey(6, Colors.green),
              buildKey(7, Colors.blue),
              buildKey(8, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
