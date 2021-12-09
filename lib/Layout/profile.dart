import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Column profileComponent(AssetImage image,
    {String name,
    // double padding = 5.5,
    double size = 55,
    Function profileClick = moveOtherProfile}) {
  return Column(
    children: <Widget>[
      SizedBox(
        width: size,
        height: size,
        child: GestureDetector(
          onTap: () => profileClick,
          child: CircleAvatar(
            backgroundImage: image,
          ),
        ),
      ),
      name == null
          ? Container()
          : Padding(
            padding: EdgeInsets.only(top:sh2),
            child: settingText(name, weight: FontWeight.w600, size: 16),
          )
    ],
  );
}

void moveOtherProfile() {
  Get.toNamed('/account');
}
