import 'package:DiveSocialApp/Views/createPage.dart';
import 'package:DiveSocialApp/Views/detailPostPage.dart';
import 'package:DiveSocialApp/Views/feedWidget.dart';
import 'package:DiveSocialApp/Views/postPage.dart';
import 'package:DiveSocialApp/themeData.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'accountPage.dart';
import 'cameraPage.dart';
import 'searchPage.dart';
import 'homePage.dart';

class TabPage extends StatefulWidget {
  final FirebaseUser user;

  TabPage(this.user);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  List _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(),
      SearchPage(),
      CameraPage(),
      CreatePage(),
      AccountPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _bottomIconSetting(Icons.roofing_rounded, 0),
              _bottomIconSetting(Icons.search_outlined, 1,),
              _bottomIconSetting(Icons.camera_alt_outlined, 2),
              _bottomIconSetting(Icons.add_box_outlined, 3),
              _bottomIconSetting(Icons.person_outline_outlined, 4)
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _selectColor(int index) {
    return _selectedIndex == index ? defaultColor : lightGreyColor;
  }

  IconButton _bottomIconSetting(
      IconData icon, int index) {
    return IconButton(
      iconSize: 25.0,
      icon: Icon(
        icon,
        color: _selectColor(index),
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}
