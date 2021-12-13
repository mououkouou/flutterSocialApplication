import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';

Widget buildBox(
    {double width, double height, BoxDecoration boxDecoration, Widget widget, Function ontap}) {
  return GestureDetector(
      onTap: ontap,
      child:
        Container(
          width: width,
          height: height,
          child: widget,
          decoration: boxDecoration,
        ),
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


Container buildBackgroundBox({Widget widget,EdgeInsets padding, EdgeInsets margin})
{
  return Container
  (
    margin: margin,
    padding: padding == null ? EdgeInsets.zero : padding ,
    width: ScreenWidth,
    decoration: BoxDecoration
    (
      color: whiteColor,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(13), topRight: Radius.circular(13))
    ),
    child: widget == null ? Container() : widget,
  );
}

Container smallFillBox(Widget widget,{double width, double height,Color color = whiteColor, double radius = 13.0})
{
  return Container
  (
    width: width,
    height: height,
    decoration: BoxDecoration
    (
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(radius))
    ),
    child: widget,
  );
}

Container smallBorderBox(Widget text,{double width, double height,Color color = whiteColor})
{
  return Container
  (
    width: width,
    height: height,
    decoration: BoxDecoration
    (
      border: Border.all(color: color,width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(13))
    ),
    child: Center(child: text),
  );
}
