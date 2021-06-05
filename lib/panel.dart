import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildKey(Colors.red, 'note1.wav'),
        _buildKey(Colors.orange, 'note2.wav'),
        _buildKey(Colors.yellow, 'note3.wav'),
        _buildKey(Colors.green, 'note4.wav'),
        _buildKey(Colors.teal, 'note5.wav'),
        _buildKey(Colors.blue, 'note6.wav'),
        _buildKey(Colors.purple, 'note7.wav'),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

  Widget _buildKey(Color color, String notePath) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          // backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(
            EdgeInsets.all(0),
          ),
        ),
        child: Container(
          color: color,
        ),
        onPressed: () {
          player.play(notePath);
        },
      ),
    );
  }
}
