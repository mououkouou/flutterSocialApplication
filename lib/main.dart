import 'package:chapter10/Router/index.dart' as Router;
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dive Social Networking Service',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: Router.routes,
    );
  }
}
