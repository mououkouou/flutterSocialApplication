import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';

import 'boxWidgetComponent.dart';

Widget displayPostPicture(String location, AssetImage image,)
{
  return
    Stack(
      alignment: Alignment.bottomLeft,
      children:
      [
        ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: 
            Image(
            width: double.infinity,
            height: 200,
            image: image,
            fit: BoxFit.cover,
            ),
        ),
        Padding(
          padding: EdgeInsets.only(left:20, bottom:20),
          child: 
            smallFillBox(
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child:
                Row(
                  mainAxisSize: MainAxisSize.min,
                    children: 
                    [
                      Icon(Icons.location_on_outlined, color: whiteColor,),
                      SizedBox(width: 5),
                      settingText(location, size:12, color: whiteColor),
                    ],
                ),
            ),
            color:defaultColor.withOpacity(0.7),
            ),
        )
      ],
    );
}
Widget buildTitle(String title){
  return Text(title, style: titleTextStyle(defaultColor),);
}

Widget buildSubTitle(String title){
  return Text(title, style: subTextStyle(defaultColor),);
}

Widget buildGpsWidget(String location){
  return buildBox(
    boxDecoration:
      boxDecoration(borderRadius: 10.0, boxShadow: boxShadow()),
      widget: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        child: Row(
          children: 
          [
            Icon(Icons.location_on_outlined),
            SizedBox(width:10),
            Expanded(child: Text(location)),
          ]
        )
      ),
  );
}
