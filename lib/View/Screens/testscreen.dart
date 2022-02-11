// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivrey/Controller/LogiqueSheet.dart';
import 'package:food_delivrey/View/Component/Widget/Input.dart';
import 'package:food_delivrey/View/Component/Widget/Rowtitle.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/bottomsheet.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/Widget/card.dart';
import 'package:food_delivrey/View/Component/Widget/divider.dart';
import 'package:food_delivrey/View/Component/Widget/lists.dart';
import 'package:food_delivrey/View/Component/Widget/scrollscreen.dart';
import 'package:food_delivrey/View/Component/Widget/stacks.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';
import 'package:food_delivrey/View/Screens/home/Scr_inforesto.dart';

class mytest extends StatefulWidget {
  const mytest({Key? key}) : super(key: key);

  @override
  _mytestState createState() => _mytestState();
}

class _mytestState extends State<mytest> {
  int curIndx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Mylist().L_order(),
      ),
    );
  }
} //close class
