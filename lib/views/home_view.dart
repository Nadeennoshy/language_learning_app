import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';
import 'package:language_learning_app/views/colors_view.dart';
import 'package:language_learning_app/views/family_members_view.dart';
import 'package:language_learning_app/views/numbers_view.dart';
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
            pageNavigator: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((BuildContext context) {
                return const NumbersView();
              })));
            },
            categoryName: 'Numbers',
            categoryColor: orangeColor,
          ),
          CategoryContainer(
            pageNavigator: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((BuildContext context) {
                return const FamilyMembersView();
              })));
            },
            categoryName: 'Family Members',
            categoryColor: greenColor,
          ),
          CategoryContainer(
            pageNavigator: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((BuildContext context) {
                return const ColorsView();
              })));
            },
            categoryName: 'Colors',
            categoryColor: purpleColor,
          ),
          CategoryContainer(
            pageNavigator: () {},
            categoryName: 'Phrases',
            categoryColor: blueColor,
          ),
        ],
      ),
    );
  }
}
