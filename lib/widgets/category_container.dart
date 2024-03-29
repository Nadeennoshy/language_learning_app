import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.categoryName,
    required this.categoryColor,
    required this.pageNavigator,
  });
  final String categoryName;
  final Color categoryColor;
  final Function() pageNavigator;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pageNavigator,
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        color: categoryColor,
        width: double.infinity,
        height: 65,
        child: Text(
          categoryName,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
