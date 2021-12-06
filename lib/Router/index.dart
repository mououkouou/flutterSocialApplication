import 'package:chapter10/Router/rootPage.dart';
import 'package:chapter10/Views/accountPage.dart';
import 'package:chapter10/Views/coinPage.dart';
import 'package:chapter10/Views/createPage.dart';
import 'package:chapter10/Views/homePage.dart';
import 'package:chapter10/Views/loginPage.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(name: '/', page: () => RootPage()),
  GetPage(name: '/home', page: () => HomePage()),
  GetPage(name: '/login', page: () => LoginPage()),
  GetPage(name: '/coin', page: () => CoinPage()),
  GetPage(name: '/account', page: () => AccountPage()),
  GetPage(name: '/create', page: () => CreatePage()),
  //GetPage(name: '/tab', page: () => TabPage())
];
