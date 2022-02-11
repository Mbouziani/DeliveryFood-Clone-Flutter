import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';

class Myscroll {
  Widget ScreenScroll({
    required BuildContext context,
    required Widget header,
    required Widget body,
  }) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.3),
            width: MediaQuery.of(context).size.width,
            color: Mycolors().orongefrom,
            child: header,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.7),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Mycolors().white,
              child: body,
            ),
          )
        ],
      ),
    );
  }
}
