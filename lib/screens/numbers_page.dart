import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Item> numbers = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one',
        sound: 'number_one_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two',
        sound: 'number_two_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        sound: 'number_three_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four',
        sound: 'number_four_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        sound: 'number_five_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six',
        sound: 'number_six_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven',
        sound: 'number_seven_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi ',
        enName: 'eight',
        sound: 'number_eight_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyuu',
        enName: 'nine',
        sound: 'number_nine_sound.mp3'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten',
        sound: 'number_ten_sound.mp3'),
  ];
  // final Number one = const Number(
  //   image: 'assets/images/numbers/number_one.png',
  //   jpName: 'ichi',
  //   enName: 'one');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xffEF9235),
            itemType: 'numbers',
          );
        },
      ),

      // ListView(
      //   children:
      //     getList(numbers),

      // ItemNumber(number: numbers[0]),
      // ItemNumber(number: numbers[1]),
      // ItemNumber(number: numbers[2]),
      // ItemNumber(number: numbers[3]),
      // ItemNumber(number: numbers[4]),
      // ItemNumber(number: numbers[5]),
      // ItemNumber(number: numbers[6]),
      // ItemNumber(number: numbers[7]),
      // ItemNumber(number: numbers[8]),
      // ItemNumber(number: numbers[9]),
      // )
    );
  }

  List<Widget> getList(List<Item> numbers) {
    List<Widget> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(
        ListItem(color: Color(0xffEF9235), number: numbers[i],itemType: 'numbers',),
      );
    }
    return itemList;
  }
}
