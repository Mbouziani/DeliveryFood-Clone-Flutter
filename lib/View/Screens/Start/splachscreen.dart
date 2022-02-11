import 'dart:async';

import 'package:food_delivrey/View/Screens/Start/onboarding.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';

class Mysplach extends StatefulWidget {
  const Mysplach({Key? key}) : super(key: key);

  @override
  _MysplachState createState() => _MysplachState();
}

class _MysplachState extends State<Mysplach> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => Get.off(const Myonboarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Mycolors().orongefrom,
              Mycolors().yellow,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyText().Txt_bodey2(
                      textalign: TextAlign.center,
                      textfont: FontWeight.w600,
                      textcolor: Mycolors().white,
                      textdata: 'Meta',
                      textsize: 32.0),
                  SizedBox(
                    width: 3,
                  ),
                  MyText().Txt_bodey2(
                      textalign: TextAlign.center,
                      textfont: FontWeight.w600,
                      textcolor: Mycolors().dark,
                      textdata: 'Food',
                      textsize: 25.0),
                ],
              ),
            ],
          )),
    );
  }
}
