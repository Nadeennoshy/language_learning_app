import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item_info.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});
  final List<CategoriesItemModel> numbers = const [
    CategoriesItemModel(
      image: 'assets/images/numbers/number_one.png',
      japaneseName: 'Ichi',
      englishName: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    CategoriesItemModel(
      image: 'assets/images/numbers/number_two.png',
      japaneseName: 'Ni',
      englishName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_three.png',
        japaneseName: 'San',
        englishName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_four.png',
        japaneseName: 'Shi',
        englishName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_five.png',
        japaneseName: 'Go',
        englishName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    CategoriesItemModel(
      image: 'assets/images/numbers/number_six.png',
      japaneseName: 'Roku',
      englishName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_seven.png',
        japaneseName: 'Sebun',
        englishName: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_eight.png',
        japaneseName: 'Hachi',
        englishName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_nine.png',
        japaneseName: 'Kyū',
        englishName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_ten.png',
        japaneseName: 'Jū',
        englishName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: textColor,
        ),
        backgroundColor: appBarColor,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, index) {
            return CategoryItemInfo(
                containerColor: orangeColor, categoryItem: numbers[index]);
          }),
    );
  }
}
