import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';

class emptyorder extends StatelessWidget {
  const emptyorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
      child: Column(
        children: [
          Expanded(child: Image.asset('assets/Images/delivery.png')),
          MyText().Txt_bodey2(
              textdata: 'You don’t have any orders',
              textsize: 24,
              textcolor: Mycolors().dark,
              textfont: FontWeight.w600,
              textalign: TextAlign.center),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65.0),
            child: MyText().Txt_bodey2(
                textdata: 'But you can quickly order a lot of delicious food',
                textsize: 14,
                textcolor: Mycolors().dark,
                textfont: FontWeight.w400,
                textalign: TextAlign.center),
          ),
          SizedBox(
            height: 24.0,
          ),
          Mybutton().outllrgbtn(
              btntxtcolor: Mycolors().white,
              btnbackcolor: Mycolors().yellow,
              btntxt: 'Order Now',
              context: context,
              pressme: () {}),
          SizedBox(
            height: 84,
          ),
        ],
      ),
    );
  }
}
