import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Screens/Start/login.dart';
import 'package:food_delivrey/View/Screens/Start/onboarding.dart';
import 'package:food_delivrey/View/Screens/Start/singup.dart';
import 'package:food_delivrey/View/Screens/Start/smscode.dart';
import 'package:food_delivrey/View/Screens/Start/splachscreen.dart';
import 'package:food_delivrey/View/Screens/carts/orderpg.dart';
import 'package:food_delivrey/View/Screens/home/Scr_inforesto.dart';
import 'package:food_delivrey/View/Screens/home/popular.dart';
import 'package:food_delivrey/View/Screens/more/morepg.dart';
import 'package:food_delivrey/View/Screens/navigator/navscreen.dart';
import 'package:food_delivrey/View/Screens/search/searchmain.dart';
import 'package:food_delivrey/View/Screens/testscreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Mysplach(),
    );
  }
}
