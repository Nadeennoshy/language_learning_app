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
        englishName: 'One'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_two.png',
        japaneseName: 'Ni',
        englishName: 'Two'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_three.png',
        japaneseName: 'San',
        englishName: 'Three'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_four.png',
        japaneseName: 'Shi',
        englishName: 'Four'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_five.png',
        japaneseName: 'Go',
        englishName: 'Five'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_six.png',
        japaneseName: 'Roku',
        englishName: 'Six'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_seven.png',
        japaneseName: 'Sebun',
        englishName: 'Seven'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_eight.png',
        japaneseName: 'Hachi',
        englishName: 'Eight'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_nine.png',
        japaneseName: 'Kyū',
        englishName: 'Nine'),
    CategoriesItemModel(
        image: 'assets/images/numbers/number_ten.png',
        japaneseName: 'Jū',
        englishName: 'Ten'),
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
