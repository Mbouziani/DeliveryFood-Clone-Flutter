import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Rowtitle.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/Widget/lists.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Mycolors().white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.all(24.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: CircleAvatar(
                      backgroundColor: Mycolors().white,
                      radius: 50.0,
                      child: myicon().getico(
                          'location_outline', Mycolors().grey, 30.0, 15.0),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            MyText().Txt_bodey2(
                                textdata: 'Deliver to',
                                textsize: 20,
                                textcolor: Mycolors().dark,
                                textfont: FontWeight.w600,
                                textalign: TextAlign.left),
                            SizedBox(
                              width: 8.0,
                            ),
                            myicon().getico(
                                'chevron_down', Mycolors().grey, 22.0, 15.0),
                          ],
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        MyText().Txt_bodey2(
                            textdata:
                                '3517 W. Gray St. Utica, Pennsylvania 57...',
                            textsize: 12,
                            textcolor: Mycolors().grey,
                            textfont: FontWeight.w400,
                            textalign: TextAlign.left),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Mybutton().icolrgbtn(
                  btntxtcolor: Mycolors().grey,
                  btnbackcolor: Mycolors().background,
                  btntxt: 'Search',
                  btnicon: 'search',
                  btnicocolor: Mycolors().grey,
                  context: context,
                  pressme: () {}),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 18.0, right: 12.0),
              child: Myrow().rowtitle(
                  Rw_name: 'Restaurent',
                  Rw_subname: 'See more',
                  Rw_subnamecolor: Mycolors().yellow,
                  MoreEvent: () {}),
            ),
            Mylist().L_restarent(),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 18.0, right: 12.0),
              child: Myrow().rowtitle(
                  Rw_name: 'Popular Food',
                  Rw_subname: 'See more',
                  Rw_subnamecolor: Mycolors().yellow,
                  MoreEvent: () {}),
            ),
            Mylist().Gridfood(),
          ],
        ),
      ),
    );
  }
}
