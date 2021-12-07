// import 'package:DiveSocialApp/Component/boxWidgetComponent.dart';
// import 'package:DiveSocialApp/Component/profile.dart';
// import 'package:DiveSocialApp/themeData.dart';
// import 'package:flutter/material.dart';

// class CoinPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildNoBody(context),
//     );
//   }

//   //데이터가 없을 때
//   Widget _buildNoBody(context) {
//     return Scaffold(
//       backgroundColor: whiteColor,
//       body: Stack(
//         children: <Widget>[
//           backgroundImage(AssetImage('assets/coinbackground.png')),
//           SafeArea(
//             child: Align(
//               alignment: Alignment.center,
//               child: Container(
//                 width: ScreenWidth * 0.85,
//                 height: ScreenHeight * 0.75,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     Padding(
//                       padding: EdgeInsets.only(bottom: sw4),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             flex: 20,
//                             child: Align(
//                                 alignment: Alignment.bottomLeft,
//                                 child: profileComponent(
//                                   AssetImage('assets/liam.jpg'),
//                                   size: 50,
//                                 )),
//                           ),
//                           SizedBox(
//                             width: sw1,
//                           ),
//                           Expanded(
//                             flex: 70,
//                             child: Text(
//                               'Hi, Lisam!',
//                               style: titleTextStyle(whiteColor),
//                             ),
//                           ),
//                           Expanded(
//                             flex: 10,
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: mainBackgroundColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     buildBox(
//                       double.infinity,
//                       ScreenHeight * 0.25,
//                       boxDecoration: boxDecoration(boxShadow: boxShadow()),
//                       widget: buildCoinBox('ArableCoin'),
//                     ),
//                     buildBox(double.infinity, ScreenHeight * 0.1,
//                         boxDecoration: boxDecoration(boxShadow: boxShadow()),
//                         widget: buildColumnBox('Transactions', Icons.list, 35)),
//                     buildBox(double.infinity, ScreenHeight * 0.1,
//                         boxDecoration: boxDecoration(boxShadow: boxShadow()),
//                         widget:
//                             buildColumnBox('Buy Coin', Icons.copyright, 35)),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         buildSquareBox(
//                             'send',
//                             100,
//                             boxDecoration(boxShadow: boxShadow()),
//                             Icons.download,
//                             40),
//                         GestureDetector(
//                             onTap: () => showModalBottomSheet(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: const Radius.circular(10.0),
//                                       topRight: const Radius.circular(10.0)),
//                                 ),
//                                 backgroundColor: whiteColor,
//                                 context: context,
//                                 builder: _buildBottomSheet),
//                             child: buildSquareBox(
//                                 'Receive',
//                                 100,
//                                 boxDecoration(boxShadow: boxShadow()),
//                                 Icons.account_balance_wallet_rounded,
//                                 40)),
//                         buildSquareBox(
//                             'Qr Scan',
//                             100,
//                             boxDecoration(boxShadow: boxShadow()),
//                             Icons.download,
//                             40),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// Widget buildCoinBox(String title) {
//   return Container(
//     padding: EdgeInsets.all(30),
//     child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           title,
//           style: titleTextStyle(defaultColor),
//         ),
//       ),
//       Row(
//         children: [
//           Expanded(
//             flex: 15,
//             child: Container(
//               width: 30,
//               height: 30,
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Image(
//                   image: AssetImage('assets/coin.png'),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//               flex: 55,
//               child: Text(
//                 '3,500',
//                 style: highlightTextStyle(defaultColor),
//               )),
//           Expanded(
//               flex: 30,
//               child: Container(
//                 padding: EdgeInsets.all(5),
//                 child: Text(
//                   '+5.36%',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 12.0,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white),
//                 ),
//                 decoration: BoxDecoration(
//                   color: pointColor,
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//               )),
//         ],
//       ),
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Row(
//           children: [
//             Text(
//               '\$2,450 ',
//               style: subTextStyle(greyColor),
//             ),
//             Text(
//               '(1DFC = 0.04\$)',
//               style: etcTextStyle(greyColor),
//             )
//           ],
//         ),
//       ),
//     ]),
//   );
// }

// Widget buildColumnBox(String title, IconData icon, double iconSize) {
//   return Container(
//     child: Row(children: [
//       Expanded(
//           flex: 80,
//           child: Padding(
//               padding: EdgeInsets.only(left: 30),
//               child: Text(title, style: subTextStyle(defaultColor)))),
//       Expanded(
//         flex: 20,
//         child: Padding(
//             padding: EdgeInsets.only(right: 20),
//             child: Icon(
//               icon,
//               color: mainColor,
//               size: iconSize,
//             )),
//       ),
//     ]),
//   );
// }

// Widget buildSquareBox(String title, double size, BoxDecoration boxDecoration,
//     IconData icon, double iconSize) {
//   return Column(
//     children: [
//       buildBox(size, size,
//           boxDecoration: boxDecoration,
//           widget: Icon(
//             icon,
//             color: mainColor,
//             size: iconSize,
//           )),
//       SizedBox(height: 10),
//       Text(title, style: etcTextStyle(defaultColor)),
//     ],
//   );
// }

// Widget _buildTextBox(
//   String text,
//   double width,
//   TextStyle textStyle,
//   Color color,
// ) {
//   return Container(
//     padding: EdgeInsets.all(20),
//     width: width,
//     child: Text(text, textAlign: TextAlign.center, style: textStyle),
//     decoration: BoxDecoration(
//       color: color,
//       borderRadius: BorderRadius.circular(15),
//     ),
//   );
// }

// Widget _buildBottomSheet(BuildContext context) {
//   return Center(
//     child: Container(
//       width: sw80,
//       height: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Image(image: AssetImage('assets/qrcode.jpg')),
//           Column(
//             children: [
//               _buildTextBox('03sfd3k50cxkjfrkf2hvp11l400e', double.infinity,
//                   etcTextStyle(defaultColor), subBackgroundColor),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                 _buildTextBox('COPY', ScreenWidth * 0.37,
//                     subTextStyle(whiteColor), pointColor),
//                 _buildTextBox('SHARE', ScreenWidth * 0.37,
//                     subTextStyle(whiteColor), pointColor),
//               ])
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }
