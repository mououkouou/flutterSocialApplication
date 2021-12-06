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
    backgroundColor: mainBackgroundColor,
    body: SafeArea(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          color: mainColor,
          margin: EdgeInsets.fromLTRB(
              ScreenWidth * 0.075, ScreenWidth * 0.075, 0, 0),
          child: Row(
            children: [
              Expanded(
                flex: 70,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: _buildSearch(),
                ),
              ),
              Expanded(
                flex: 30,
                child: buildProfileCircle(AssetImage('assets/liam.jpg'), 50),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildSearch() {}
