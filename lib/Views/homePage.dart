import 'package:DiveSocialApp/Component/boxWidgetComponent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themeData.dart';
import 'feedWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildNoBody(context));
  }
}

//데이터가 없을 때
Widget _buildNoBody(context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(sw8),
            child: buildSearch(),
          ),
          Container(
            margin: EdgeInsets.only(left: sw8),
            height: 200.0,
            child: buildCountry(),
          )
        ],
      ),
    ),
  );
}

Widget buildSearch() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildBox(
          width: sw60 + sw3,
          height: 50,
          boxDecoration:
              boxDecoration(borderRadius: 10.0, boxShadow: boxShadow()),
          widget: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: defaultColor,
                )),
          )),
      buildProfileCircle(AssetImage('assets/liam.jpg'), 50),
    ],
  );
}

Widget buildCountry() {
  return ListView.builder(
      scrollDirection: Axis.horizontal, itemBuilder: (context, index) {});
}
