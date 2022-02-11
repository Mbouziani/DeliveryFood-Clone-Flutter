import 'package:flutter/material.dart';
import 'package:food_delivrey/Controller/LogiqueSheet.dart';
import 'package:food_delivrey/Controller/openitem.dart';
import 'package:food_delivrey/View/Component/Widget/Rowtitle.dart';
import 'package:food_delivrey/View/Component/Widget/bottomsheet.dart';
import 'package:food_delivrey/View/Component/Widget/card.dart';
import 'package:food_delivrey/View/Component/Widget/lists.dart';
import 'package:food_delivrey/View/Component/Widget/scrollscreen.dart';
import 'package:food_delivrey/View/Component/Widget/stacks.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:get/get.dart';

class Myresto extends StatefulWidget {
  const Myresto({Key? key}) : super(key: key);

  @override
  _MyrestoState createState() => _MyrestoState();
}

class _MyrestoState extends State<Myresto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().white,
      body: Myscroll().ScreenScroll(
          context: context,
          header: Mystacks().restorantStack(
              context: context,
              R_cover: 'assets/Images/tajin.jpg',
              R_name: 'Freindly',
              R_rate: '3.5',
              VR_back: () => Get.back(),
              VR_like: () {}),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Myrow().rowtitle(
                    Rw_name: 'Popular',
                    Rw_subname: 'See more',
                    Rw_subnamecolor: Mycolors().yellow,
                    MoreEvent: () {}),
                Mylist().L_food(),
                const SizedBox(
                  height: 16.0,
                ),
                Myrow().rowtitle(
                    Rw_name: 'Most Rated',
                    Rw_subname: 'See more',
                    Rw_subnamecolor: Mycolors().yellow,
                    MoreEvent: () {
                      print('done');
                    }),
                Mylist().L_food(),
                const SizedBox(
                  height: 16.0,
                ),
                Myrow().rowtitle(
                    Rw_name: 'Food',
                    Rw_subname: 'See more',
                    Rw_subnamecolor: Mycolors().yellow,
                    MoreEvent: () {
                      print('done');
                    }),
                Mylist().L_food(),
              ],
            ),
          )),
    );
  }
}
