import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Mystacks {
  Widget restorantStack(
      {required BuildContext context,
      required String R_cover,
      required String R_name,
      required String R_rate,
      required VoidCallback VR_back,
      required VoidCallback VR_like}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.3),
          decoration: BoxDecoration(
              color: Mycolors().white,
              image: const DecorationImage(
                image: AssetImage(
                  'assets/Images/tajin.jpg',
                ),
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          right: 0.0,
          left: 0.0,
          top: 0.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height * 0.3) - 30,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.black.withOpacity(0.3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0))),
          ),
        ),
        Positioned(
          right: 0.0,
          left: 0.0,
          bottom: -1.1,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
                color: Mycolors().white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0))),
          ),
        ),
        Positioned(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Mybutton().iconbtn(
                        btnbackcolor: Colors.transparent,
                        iconcolor: Mycolors().white,
                        iconnamecolor: 'chevron_big_left',
                        context: context,
                        pressme: () {}),
                    Mybutton().iconbtn(
                        btnbackcolor: Colors.transparent,
                        iconcolor: Mycolors().white,
                        iconnamecolor: 'heart_outline',
                        context: context,
                        pressme: () {}),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 5.0),
                  child: MyText().Txt_bodey2(
                      textdata: 'Freindly',
                      textsize: 24,
                      textcolor: Mycolors().white,
                      textfont: FontWeight.w600,
                      textalign: TextAlign.left),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      myicon().getico('stars', Mycolors().white, 16.0, 16.0),
                      SizedBox(
                        width: 6.0,
                      ),
                      MyText().Txt_bodey2(
                          textdata: '4.5',
                          textsize: 14,
                          textcolor: Mycolors().white,
                          textfont: FontWeight.w300,
                          textalign: TextAlign.left),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    );
    ;
  }
}
