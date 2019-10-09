import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MyKey {
  Color color;
  int soundNumber;
  MyKey(Color color, int keyNum) {
    this.color = color;
    this.soundNumber = keyNum;
  }

  Expanded buildKey() {
    return Expanded(
      child: FlatButton(
        child: Text('Note $soundNumber'),
        color: color,
        onPressed: () {
          playSound();
        },
      ),
    );
  }

  void playSound() {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
