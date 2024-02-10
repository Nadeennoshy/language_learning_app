import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/widgets/category_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackground,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          'Toku',
          style: TextStyle(color: textColor, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          CategoryContainer(
            categoryName: 'Numbers',
            categoryColor: orangeColor,
          ),
          CategoryContainer(
            categoryName: 'Family Members',
            categoryColor: greenColor,
          ),
          CategoryContainer(
            categoryName: 'Colors',
            categoryColor: purpleColor,
          ),
          CategoryContainer(
            categoryName: 'Phrases',
            categoryColor: blueColor,
          ),
        ],
      ),
    );
  }
}
