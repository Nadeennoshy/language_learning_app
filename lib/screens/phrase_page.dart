import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/item.dart';
// import 'package:language_learning_app/models/phrase.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});
  final List<Item> phrases = const [
    Item(
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        sound: 'dont_forget_to_subscribe.wav'),
    Item(
        enName: 'i love  programming',
        jpName: 'Watashi wa puroguramingu daisukidesu',
        sound: 'i_love_programming.wav'),
    Item(
        enName: 'programming is easy',
        jpName: 'Puroguramingu wa kantandesu',
        sound: 'programming_is_easy.wav'),
    Item(
        enName: 'where are you going',
        jpName: 'Doko ni iku no',
        sound: 'where_are_you_going.wav'),
    Item(
        enName: 'what is your name ?',
        jpName: 'Namae wa nandesu ka',
        sound: 'what_is_your_name.wav'),
    Item(
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu',
        sound: 'i_love_anime.wav'),
    Item(
        enName: 'how are you feeling?',
        jpName: 'Go kibun wa ikagadesu ka',
        sound: 'how_are_you_feeling.wav'),
    Item(
        enName: 'are you coming?',
        jpName: 'Kimasu ka',
        sound: 'are_you_coming.wav'),
    Item(
        enName: 'yes i am coming',
        jpName: 'Hai watashi wa kite imasu',
        sound: 'yes_im_coming.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(
            phrase: phrases[index],
            color: Color(0xff50ADC7),
            itemType: 'phrases',
          );
        },
      ),
    );
    ;
  }
}
