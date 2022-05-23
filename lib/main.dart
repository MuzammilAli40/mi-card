// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    xylophone(),
  );
}

// ignore: camel_case_types
class xylophone extends StatelessWidget {
  const xylophone({Key? key}) : super(key: key);

  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color? color, int? soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber!);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          // ignore: deprecated_member_use
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.orange, soundnumber: 2),
              buildkey(color: Colors.yellow, soundnumber: 3),
              buildkey(color: Colors.green, soundnumber: 4),
              buildkey(color: Colors.teal, soundnumber: 5),
              buildkey(color: Colors.blue, soundnumber: 6),
              buildkey(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
