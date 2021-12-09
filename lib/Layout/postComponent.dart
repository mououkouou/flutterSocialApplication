import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';

Widget displayPostPicture(
  {width = double.infinity, height=200, AssetImage image}
){
  return
    ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Image(
        width: double.infinity,
        height: 200,
        image: image,
        fit: BoxFit.cover,
      ),
    );
}
Widget buildTitle(String title){
  return Text(title, style: titleTextStyle(defaultColor),);
}

Widget buildSubTitle(String title){
  return Text(title, style: subTextStyle(defaultColor),);
}

