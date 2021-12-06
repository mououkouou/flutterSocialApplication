import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'tabPage.dart';

class LoginPage extends StatelessWidget {
  // 구글 로그인 위한 객체
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  // 파이어베이스 인증 정보 가지는 객체
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _handleSignIn() async {
    //GoogleSignIn객체를 통해 sign in -> GoogleSignInAccount객체 생성
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    //GoogleSignInAccount객체를 통해서 GoogleSignInAuthentication객체 생성
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    //구글 로그인으로 인증된 정보를 기반으로 FireBaseUser객체를 구성
    FirebaseUser user = (await _auth.signInWithCredential(
            GoogleAuthProvider.getCredential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken)))
        .user;
    print("signed in " + user.displayName);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                width: 237,
                height: 40,
                image: AssetImage('assets/diveFlashTextLogo.png')),
            Container(
              margin: EdgeInsets.all(50.0),
            ),
            SignInButton(
              Buttons.Google,
              onPressed: () {
                _handleSignIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
