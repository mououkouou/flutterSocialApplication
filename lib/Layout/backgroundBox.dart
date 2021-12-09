import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';

Widget buildBackgroundBox({Widget widget,EdgeInsets padding})
{
  return Container
  (
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