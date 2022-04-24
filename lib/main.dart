import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_ecosystem_fluter_master/view/Home.dart';
import 'package:get_x_ecosystem_fluter_master/view/home.dart';
import 'package:get_x_ecosystem_fluter_master/view/page_one.dart';
import 'package:get_x_ecosystem_fluter_master/view/page_three.dart';
import 'package:get_x_ecosystem_fluter_master/view/page_two.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/dashboard.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/mult_counter_page.dart';
import 'package:get_x_ecosystem_fluter_master/view/screens/splash_page.dart';
import 'view/screens/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your appuplication.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name:"/1", page: ()=> PageOne()),
        GetPage(name:"/2", page: ()=> PageTwo()),
        GetPage(name:"/3", page: ()=> PageThree()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
