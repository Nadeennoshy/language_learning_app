import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item_info.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});
  final List<CategoriesItemModel> colors = const [
    CategoriesItemModel(
        image: 'assets/images/colors/color_black.png',
        japaneseName: 'Purakku',
        englishName: 'Black'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_brown.png',
        japaneseName: 'Cha-iro',
        englishName: 'Brown'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        japaneseName: 'Hokori ppoi kiiro',
        englishName: 'Dusty Yellow'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_gray.png',
        japaneseName: 'Gurei',
        englishName: 'Gray'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_green.png',
        japaneseName: 'Midori',
        englishName: 'Green'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_red.png',
        japaneseName: 'Aka',
        englishName: 'Red'),
    CategoriesItemModel(
        image: 'assets/images/colors/color_white.png',
        japaneseName: 'Shiro',
        englishName: 'White'),
    CategoriesItemModel(
        image: 'assets/images/colors/yellow.png',
        japaneseName: 'Ki-iro',
        englishName: 'Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        leading: Icon(
          Icons.arrow_back,
          color: textColor,
        ),
        title: Text(
          'Colors',
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (BuildContext context, index) {
            return CategoryItemInfo(
                containerColor: purpleColor, categoryItem: colors[index]);
          }),
    );
  }
}
