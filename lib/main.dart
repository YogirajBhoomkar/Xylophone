import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int tileNumber) {
    final Tile1 = AudioCache();
    Tile1.play('note$tileNumber.wav');
  }

  Expanded xylophoneTile(int tileNumber, Color color) => Expanded(
        child: FlatButton(
          hoverColor: Colors.red.shade800,
          padding: EdgeInsets.all(0.0),
          onPressed: () {
            playSound(tileNumber);
          },
          child: Container(
            color: color,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                xylophoneTile(1, Colors.red),
                xylophoneTile(2, Colors.orangeAccent),
                xylophoneTile(3, Colors.yellow),
                xylophoneTile(4, Colors.green),
                xylophoneTile(5, Colors.teal),
                xylophoneTile(6, Colors.blue),
                xylophoneTile(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
