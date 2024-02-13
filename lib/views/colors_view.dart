import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item_info.dart';
import 'package:language_learning_app/widgets/custom_app_bar.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});
  final List<CategoriesItemModel> colors = const [
    CategoriesItemModel(
        image: 'assets/images/colors/color_black.png',
        japaneseName: 'Purakku',
        englishName: 'Black',
        sound: 'sounds/colors/black.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_brown.png',
        japaneseName: 'Cha-iro',
        englishName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        japaneseName: 'Hokori ppoi kiiro',
        englishName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty yellow.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_gray.png',
        japaneseName: 'Gurei',
        englishName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_green.png',
        japaneseName: 'Midori',
        englishName: 'Green',
        sound: 'sounds/colors/green.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_red.png',
        japaneseName: 'Aka',
        englishName: 'Red',
        sound: 'sounds/colors/red.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_white.png',
        japaneseName: 'Shiro',
        englishName: 'White',
        sound: 'sounds/colors/white.wav'),
    CategoriesItemModel(
        image: 'assets/images/colors/yellow.png',
        japaneseName: 'Ki-iro',
        englishName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context,'Colors'),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (BuildContext context, index) {
            return CategoryItemInfo(
                containerColor: purpleColor, categoryItem: colors[index]);
          }),
    );
  }
}
