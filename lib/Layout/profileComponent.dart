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

Widget profileName(
  Widget profile, String name, String job
) {
  return 
    Row(
      children: [
        profile,
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            settingText(name, size: 16, weight: FontWeight.w600, align: TextAlign.start),
            settingText(job, size: 13, color: greyColor, align: TextAlign.start)
          ],
        )
      ],
    );
}

void moveOtherProfile() {
  Get.toNamed('/account');
}
