import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item_info.dart';
import 'package:language_learning_app/widgets/custom_app_bar.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});
  final List<CategoriesItemModel> familyMembers = const [
    CategoriesItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      japaneseName: 'Ojiisan',
      englishName: 'Grand Father',
      sound: 'sounds/family_members/grand father.wav',
    ),
    CategoriesItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      japaneseName: 'Sobo',
      englishName: 'Grand Mother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    CategoriesItemModel(
      image: 'assets/images/family_members/family_father.png',
      japaneseName: 'Chichioya',
      englishName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    CategoriesItemModel(
      image: 'assets/images/family_members/family_mother.png',
      japaneseName: 'Hahaoya',
      englishName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    CategoriesItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      japaneseName: 'Nisan',
      englishName: 'Old Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    CategoriesItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      japaneseName: 'Ane',
      englishName: 'Old Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    CategoriesItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      japaneseName: 'Otôto',
      englishName: 'Younger Brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        japaneseName: 'Imôto',
        englishName: 'Younger Sister',
        sound: 'sounds/family_members/younger sister.wav'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_son.png',
        japaneseName: 'Musuko',
        englishName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    CategoriesItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        japaneseName: 'Musume',
        englishName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Family Members'),
      body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (BuildContext context, index) {
            return CategoryItemInfo(
                containerColor: greenColor, categoryItem: familyMembers[index]);
          }),
    );
  }
}
