import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';

Widget buildBox(
    {double width, double height, BoxDecoration boxDecoration, Widget widget}) {
  return Container(
    width: width,
    height: height,
    child: widget,
    decoration: boxDecoration,
  );
}
BoxDecoration boxDecoration(
    {double borderRadius = 15.0,
    BoxShadow boxShadow,
    Color backgroundColor = whiteColor}) {
  return BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
      boxShadow: boxShadow != null ? [boxShadow] : []);
}

BoxShadow boxShadow(
    {Color boxShadowColor = greyColor,
    double spreadRadius = 0.5,
    double blurRadius = 6,
    double offsetX = 0,
    double offsetY = 3,
    double opacity = 0.2}) {
  return BoxShadow(
      color: boxShadowColor.withOpacity(opacity),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: Offset(offsetX, offsetY));
}
