import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playScound(int n){
        final player = AudioCache();
        player.play('note$n.wav');

  }
  Expanded buildkey({Color color, int soundNumber})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playScound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Play your favourites tunes')),
        ),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNumber: 1),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
              buildkey(color: Colors.green, soundNumber: 2),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
              buildkey(color: Colors.blue, soundNumber: 3),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
              buildkey(color: Colors.yellow, soundNumber: 4),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
              buildkey(color: Colors.orange, soundNumber: 5),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
              buildkey(color: Colors.teal, soundNumber: 6),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
              buildkey(color: Colors.pink, soundNumber: 7),
              SizedBox(
                child: Divider(
                  height: 3.0,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
