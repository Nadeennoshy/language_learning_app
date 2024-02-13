import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';

class CategoryItemNoImage extends StatelessWidget {
  const CategoryItemNoImage(
      {super.key, required this.containerColor, required this.categoryItem});
  final Color containerColor;
  final CategoriesItemModel categoryItem;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    fontSize: 18,
                  ),
                ),
                Text(
                  categoryItem.englishName,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          IconButton(
            onPressed: () {
              categoryItem.onClick();
            },
            icon: Icon(
              Icons.play_arrow,
              color: textColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
