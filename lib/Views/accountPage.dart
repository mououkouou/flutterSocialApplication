import 'package:chapter10/component/boxWidgetComponent.dart';
import 'package:chapter10/component/profile.dart';
import 'package:chapter10/themeData.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AccountPage extends StatelessWidget {
//  final FirebaseUser user;

//  AccountPage(this.user);
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: ScreenHeight * 0.04),
        child: Column(
          children: <Widget>[
            _buildProfile(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return Stack(children: [
      Column(
        children: [
          Center(
            child: Column(
              children: [
                profileComponent(AssetImage('assets/diver.jpg'), name: 'Liam'),
                Text(
                  'Diver',
                  style: etcTextStyle(greyColor),
                ),
              ],
            ),
          ),
          buildBox(108, 30,
              boxDecoration: boxDecoration(backgroundColor: pointColor),
              widget: settingText(
                'happy',
                color: whiteColor,
                weight: FontWeight.w700,
              )),
          // Container(
          //   width: sw50,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20), color: pointColor),
          //   child: settingText(
          //     'happy',
          //     color: whiteColor,
          //     weight: FontWeight.w700,
          //   ),
          // ),
          Container(
            width: sw70,
            padding: EdgeInsets.fromLTRB(sw10, sh3, sw10, sh3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: [
                      settingText('1.2K', size: 15, weight: FontWeight.w700),
                      settingText('Likes', size: 11, color: greyColor)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      settingText('107', size: 15, weight: FontWeight.w700),
                      settingText('Followers', size: 11, color: greyColor)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      settingText('115', size: 15, weight: FontWeight.w700),
                      settingText('Followings', size: 11, color: greyColor)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          color: Colors.black,
          onPressed: () {
            // 로그아웃
            FirebaseAuth.instance.signOut();
            _googleSignIn.signOut(); //firebase 와 googleSignin 둘다 sign out 해야함
          },
        )
      ],
      backgroundColor: Colors.white,
      title: Text('DiveFlash', style: GoogleFonts.poppins()),
    );
  }

  // 내 게시물 가져오기

  // 팔로잉 가져오기

  // 팔로워 가져오기
}
