import 'package:flutter/material.dart';
import 'package:language_learning_app/components/list_item.dart';
import 'package:language_learning_app/models/item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<Item> colorItems = const [
   Item(
    sound: 'black.wav', 
    image: 'assets/images/colors/color_black.png', 
    jpName: 'Burakku', 
    enName: 'black'),
   Item(
    sound: 'brown.wav', 
    image: 'assets/images/colors/color_brown.png', 
    jpName: 'Chairo', 
    enName: 'brown'),
   Item(
    sound: 'dusty yellow.wav', 
    image: 'assets/images/colors/color_dusty_yellow.png', 
    jpName: 'Hokori ppoi kiiro', 
    enName: 'dusty yellow'),
    Item(
      sound: 'gray.wav', 
      image: 'assets/images/colors/color_gray.png', 
      jpName: 'Gurē', 
      enName: 'gray'),
    Item(
      sound: 'green.wav', 
      image: 'assets/images/colors/color_green.png', 
      jpName: 'Midori', 
      enName: 'green'),
    Item(
      sound: 'red.wav', 
      image: 'assets/images/colors/color_red.png', 
      jpName: 'Aka', 
      enName: 'red'),
    Item(
    sound: 'white.wav', 
    image: 'assets/images/colors/color_white.png', 
    jpName: 'Shiro', 
    enName: 'white'),
    Item(
      sound: 'yellow.wav', 
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro', 
      enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorItems.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: colorItems[index],
            color: Color(0xff79359F),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}