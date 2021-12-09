import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

//ColorData
const mainColor = Color(0xFF1D315B); //연한색
const boxTextColor = Color(0xFF686868); // 배경 main or point 사용된 박스에 들어갈 글자색

const whiteColor = Color(0xFFFFFFFF);
const defaultColor = Color(0xFF000000);
const greyColor = Color(0xFF7A7A7A);
const lightGreyColor = Color(0xFFCECECE);
// background - Main화면, 코인화면,
const mainBackgroundColor = Color(0xFFF0EFF0);
// background - 포스트화면
const subBackgroundColor = Color(0xFFEEF2F5);
const heartColor = Color(0xFFFF8E8E);

//width,height Data
final sw1 = ScreenWidth * 0.01;
final sw2 = ScreenWidth * 0.02;
final sw3 = ScreenWidth * 0.03;
final sw4 = ScreenWidth * 0.04;
final sw5 = ScreenWidth * 0.05;
final sw6 = ScreenWidth * 0.06;
final sw7 = ScreenWidth * 0.07;
final sw8 = ScreenWidth * 0.08;
final sw9 = ScreenWidth * 0.09;

final sh2 = ScreenHeight * 0.01;
final sh1 = ScreenHeight * 0.02;
final sh3 = ScreenHeight * 0.03;
final sh4 = ScreenHeight * 0.04;
final sh5 = ScreenHeight * 0.05;
final sh6 = ScreenHeight * 0.06;
final sh7 = ScreenHeight * 0.07;
final sh8 = ScreenHeight * 0.08;
final sh9 = ScreenHeight * 0.09;

final sw10 = ScreenWidth * 0.1;
final sw20 = ScreenWidth * 0.2;
final sw30 = ScreenWidth * 0.3;
final sw40 = ScreenWidth * 0.4;
final sw50 = ScreenWidth * 0.5;
final sw60 = ScreenWidth * 0.6;
final sw70 = ScreenWidth * 0.7;
final sw80 = ScreenWidth * 0.8;
final sw85 = ScreenWidth * 0.85;
final sw90 = ScreenWidth * 0.9;

final sh10 = ScreenHeight * 0.1;
final sh20 = ScreenHeight * 0.2;
final sh30 = ScreenHeight * 0.3;
final sh40 = ScreenHeight * 0.4;
final sh50 = ScreenHeight * 0.5;
final sh60 = ScreenHeight * 0.6;
final sh70 = ScreenHeight * 0.7;
final sh80 = ScreenHeight * 0.8;
final sh90 = ScreenHeight * 0.9;

//TextStyleData
// Main화면 타이틀
TextStyle titleTextStyle(Color color) {
  return GoogleFonts.poppins(
      textStyle:
          TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: color));
}

TextStyle subTextStyle(Color color) {
  return GoogleFonts.poppins(
      textStyle:
          TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: color));
}

TextStyle highlightTextStyle(Color color) {
  return GoogleFonts.poppins(
      textStyle:
          TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: color));
}

TextStyle etcTextStyle(Color color) {
  return GoogleFonts.poppins(
      textStyle:
          TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: color));
}

Text settingText(String text,
    {double size = 14,
    FontWeight weight = FontWeight.normal,
    Color color = defaultColor,
    TextAlign align = TextAlign.center}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: size, fontWeight: weight, color: color)),
  );
}

final ScreenWidth = Get.width;
final ScreenHeight = Get.height;

//배경 이미지 설정
Container backgroundImage(AssetImage image) {
  return Container(
    width: ScreenWidth,
    height: ScreenHeight,
    decoration:
        BoxDecoration(image: DecorationImage(image: image, fit: BoxFit.cover)),
  );
}

Widget buildProfileCircle(AssetImage assetImage, double size) {
  return Container(
    width: size,
    height: size,
    child: CircleAvatar(
      backgroundImage: assetImage,
    ),
  );
}
