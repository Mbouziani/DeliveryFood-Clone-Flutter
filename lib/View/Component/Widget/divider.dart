import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';

class Mydivider {
  Widget divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            height: 1,
            thickness: 1,
            color: Mycolors().grey,
          )),
          const SizedBox(
            width: 7.0,
          ),
          MyText().Txt_bodey2(
              textalign: TextAlign.left,
              textfont: FontWeight.w400,
              textcolor: Mycolors().grey,
              textdata: 'OR',
              textsize: 16.0),
          const SizedBox(
            width: 7.0,
          ),
          Expanded(
              child: Divider(
            height: 1,
            thickness: 1,
            color: Mycolors().grey,
          ))
        ],
      ),
    );
  }
}
