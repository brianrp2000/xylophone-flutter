import 'package:flutter/material.dart';
import 'package:xylophone/MyKey.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var keyColors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  List<Expanded> listMyKeys() {
    var keys = new List<Expanded>();
    for (int i = 1; i <= keyColors.length; i++) {
      keys.add(new MyKey(keyColors[i - 1], i).buildKey());
    }
    return keys;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: listMyKeys()),
        ),
      ),
    );
  }
}
