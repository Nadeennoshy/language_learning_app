import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';

class CategoryItemInfo extends StatelessWidget {
  const CategoryItemInfo({
    super.key,
    required this.categoryItem,
    required this.containerColor,
  });
  final CategoriesItemModel categoryItem;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            color: scaffoldBackground,
            height: 80,
            child: Image.asset(categoryItem.image)),
        Expanded(
          child: Container(
            color: containerColor,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        categoryItem.japaneseName,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        categoryItem.englishName,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.play_arrow,
                    color: textColor,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
