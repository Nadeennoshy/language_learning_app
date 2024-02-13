import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item.dart';

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
          color: imgColor,
          height: 80,
          child: Image.asset(categoryItem.image!),
        ),
        Expanded(
          child: CategoryItemNoImage(
              containerColor: containerColor, categoryItem: categoryItem),
        )
      ],
    );
  }
}
