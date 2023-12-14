import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item.dart';
// import 'package:language_learning_app/models/phrase.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.itemType,
      required this.number,
      required this.color});
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(number.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // print('sound is playing');
              // final audioPlayer = AudioCache(prefix: 'assets/sounds/numbers/');
              // audioPlayer.play('');
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(number.sound);
              // player.pla y('number_one_sound.mp3');
            },
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
            iconSize: 28,
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem(
      {super.key,
      required this.phrase,
      required this.color,
      required this.itemType});

  final Item phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              // print('sound is playing');
              // final audioPlayer = AudioCache(prefix: 'assets/sounds/numbers/');
              // audioPlayer.play('');
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(phrase.sound);
              // player.pla y('number_one_sound.mp3');
            },
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
            iconSize: 28,
          ),
        ],
      ),
    );
    ;
  }
}
