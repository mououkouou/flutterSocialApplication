import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';

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

