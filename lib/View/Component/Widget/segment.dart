import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';

class Mysegment {
  Widget segmentitem(String segmentname) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0),
      child: Container(
          child: Center(
              child: MyText().Txt_bodey2(
                  textdata: segmentname,
                  textsize: 14,
                  textcolor: Mycolors().white,
                  textfont: FontWeight.w600,
                  textalign: TextAlign.center))),
    );
  }
}
