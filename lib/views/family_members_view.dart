import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item_info.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});
  final List<CategoriesItemModel> familyMembers = const [
    CategoriesItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        japaneseName: 'Ojiisan',
        englishName: 'Grand Father'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        japaneseName: 'Sobo',
        englishName: 'Grand Mother'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_father.png',
        japaneseName: 'Chichioya',
        englishName: 'Father'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_mother.png',
        japaneseName: 'Hahaoya',
        englishName: 'Mother'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        japaneseName: 'Nisan',
        englishName: 'Old Brother'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        japaneseName: 'Ane',
        englishName: 'Old Sister'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        japaneseName: 'Otôto',
        englishName: 'Younger Brother'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        japaneseName: 'Imôto',
        englishName: 'Younger Sister'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_son.png',
        japaneseName: 'Musuko',
        englishName: 'Son'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        japaneseName: 'Musume',
        englishName: 'Daughter'),
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
          'Family Members',
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (BuildContext context, index) {
            return CategoryItemInfo(
                containerColor: greenColor, categoryItem: familyMembers[index]);
          }),
    );
  }
}
