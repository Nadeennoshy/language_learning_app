import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/models/category_items_model.dart';
import 'package:language_learning_app/widgets/category_item.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  final List<CategoriesItemModel> phrases = const [
    CategoriesItemModel(
        japaneseName: 'Rai masu ka',
        englishName: 'Are you coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    CategoriesItemModel(
        japaneseName: 'Koudoku suru koto wa wasure nai\nde kudasai',
        englishName: 'Don\'t forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    CategoriesItemModel(
        japaneseName: 'Choushi wa dou desu ka',
        englishName: 'How are you feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    CategoriesItemModel(
        japaneseName: 'Watashi wa anime ga daisuk desu',
        englishName: 'I love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    CategoriesItemModel(
        japaneseName: 'Programming ga daisuk',
        englishName: 'I love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    CategoriesItemModel(
        japaneseName: 'Programming ga kantan',
        englishName: 'Programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    CategoriesItemModel(
        japaneseName: 'Anata no namae wa nani desu ka',
        englishName: 'What is your name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    CategoriesItemModel(
        japaneseName: 'Doko ni iki masu ka',
        englishName: 'Where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    CategoriesItemModel(
        japaneseName: 'Hai watashi wa rai te iya masu',
        englishName: 'Yes i\'m coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
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
          'Phrases',
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, index) {
          return CategoryItemNoImage(
              containerColor: blueColor, categoryItem: phrases[index]);
        },
      ),
    );
  }
}
