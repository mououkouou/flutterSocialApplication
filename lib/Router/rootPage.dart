import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Views/loadingPage.dart';
import '../Views/loginPage.dart';
import '../Views/tabPage.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _handleCurrentScreen();
  }

  Widget _handleCurrentScreen() {
    return StreamBuilder(
        stream:
            FirebaseAuth.instance.onAuthStateChanged, //로그인 상태값을 stream으로 받아옴
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            //연결 중이라면 로딩 페이지 반환
            return LoadingPage();
          } else {
//
            if (snapshot.hasData) {
              return TabPage(snapshot.data);
            }
            return LoginPage();
          }
        });
  }
}
