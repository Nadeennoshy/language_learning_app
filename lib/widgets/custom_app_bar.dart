import 'package:flutter/material.dart';
import 'package:language_learning_app/constants/colors.dart';

PreferredSizeWidget customAppBar(BuildContext context,String appBarText){
  return AppBar(
        backgroundColor: appBarColor,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: textColor,
          ),
        ),
        title: Text(
          appBarText,
          style: TextStyle(
            color: textColor,
          ),
        ),
      );
}