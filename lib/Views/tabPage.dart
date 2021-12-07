import 'package:DiveSocialApp/Views/coinPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'accountPage.dart';
import 'cameraPage.dart';
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

  Color gray = Color(0xFFCDCED0);
  Color mint = Color(0xFF24E0E0);

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(),
      AccountPage(),
      AccountPage(),
      AccountPage(),
      CameraPage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    print('tab_page created');
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: mint,
            onPressed: () => _onItemTapped(4),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _bottomIconSetting(Icons.home, 0, 0.0, 28.0),
              _bottomIconSetting(Icons.copyright, 1, 28.0, 0.0),
              _bottomIconSetting(Icons.view_quilt, 2, 0.0, 28.0),
              _bottomIconSetting(Icons.account_circle, 3, 28.0, 0.0)
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
    return _selectedIndex == index ? mint : gray;
  }

  IconButton _bottomIconSetting(
      IconData icon, int index, double right, double left) {
    return IconButton(
      iconSize: 30.0,
      padding: EdgeInsets.only(right: right, left: left),
      icon: Icon(
        icon,
        color: _selectColor(index),
      ),
      onPressed: () => _onItemTapped(index),
    );
  }
}
