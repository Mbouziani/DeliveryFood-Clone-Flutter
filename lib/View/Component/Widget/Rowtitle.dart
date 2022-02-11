import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';

class Myrow {
  Widget rowtitle(
      {required String Rw_name,
      required String Rw_subname,
      required Color Rw_subnamecolor,
      required VoidCallback MoreEvent}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText().Txt_bodey2(
              textalign: TextAlign.left,
              textfont: FontWeight.w600,
              textcolor: Mycolors().dark,
              textdata: Rw_name,
              textsize: 22.0),
          TextButton(
            onPressed: () {
              MoreEvent();
            },
            child: MyText().Txt_bodey2(
                textalign: TextAlign.left,
                textfont: FontWeight.w400,
                textcolor: Rw_subnamecolor,
                textdata: Rw_subname,
                textsize: 16.0),
          ),
        ],
      ),
    );
  }
}
