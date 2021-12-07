import 'package:DiveSocialApp/Router/rootPage.dart';
import 'package:DiveSocialApp/Views/accountPage.dart';
import 'package:DiveSocialApp/Views/coinPage.dart';
import 'package:DiveSocialApp/Views/createPage.dart';
import 'package:DiveSocialApp/Views/homePage.dart';
import 'package:DiveSocialApp/Views/loginPage.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(name: '/', page: () => RootPage()),
  GetPage(name: '/home', page: () => HomePage()),
  GetPage(name: '/login', page: () => LoginPage()),
  GetPage(name: '/account', page: () => AccountPage()),
  GetPage(name: '/create', page: () => CreatePage()),
  //GetPage(name: '/tab', page: () => TabPage())
];
