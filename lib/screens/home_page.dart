import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrase_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext){
                    return FamilyPage();
              }));
            }),
            text: 'Family Members',
            color: Color(0xff558B37),
          ),
          Category(
            text: 'Colors',
            color: Color(0xff79359F),
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return ColorPage();
              }));
            }),
          ),
          Category(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return PhrasePage();
              }));
            }),
            text: 'Phrases',
            color: Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
