import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Input.dart';
import 'package:food_delivrey/View/Component/Widget/Rowtitle.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/lists.dart';
import 'package:food_delivrey/View/Component/Widget/segment.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';
import 'package:food_delivrey/View/Screens/search/searchlist.dart';

class mysearch extends StatefulWidget {
  const mysearch({Key? key}) : super(key: key);

  @override
  _mysearchState createState() => _mysearchState();
}

class _mysearchState extends State<mysearch> {
  bool issearch = false;
  late int groupv = 0;
  final segmntlist = [
    Mylist().Gridfood(),
    Mylist().L_restarent(),
  ];

  final _searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: issearch
                  ? null
                  : GestureDetector(
                      onTap: () {
                        print("hmd");
                      },
                      child: myicon().getico(
                          'chevron_big_left', Mycolors().dark, 20.0, 20.0)),
            ),
            Expanded(
                child: issearch
                    ? SizedBox(
                        height: 45.0,
                        child: MyInput().MyTextField(
                            ontapsufix: () {
                              _searchcontroller.clear();
                            },
                            ontaprefix: () {},
                            prefix: myicon()
                                .getico('search', Mycolors().grey, 25.0, 25.0),
                            sufix: myicon().getico(
                                'off_close', Mycolors().grey, 20.0, 20.0),
                            isnotempty: _searchcontroller.text.isNotEmpty
                                ? true
                                : false,
                            context: context,
                            mycontroller: _searchcontroller,
                            type: TextInputType.text,
                            onchange: () {
                              setState(() {});
                            },
                            myhint: 'Search'),
                      )
                    : MyText().Txt_bodey2(
                        textdata: 'Search',
                        textsize: 20,
                        textcolor: Mycolors().dark,
                        textfont: FontWeight.w600,
                        textalign: TextAlign.center)),
            Container(
              child: issearch
                  ? TextButton(
                      onPressed: () {
                        setState(() {
                          issearch = !issearch;
                          print('open');
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(start: 16.0),
                        child: MyText().Txt_bodey2(
                            textdata: 'Cancel',
                            textsize: 17,
                            textcolor: Mycolors().yellow,
                            textfont: FontWeight.w400,
                            textalign: TextAlign.center),
                      ))
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          issearch = !issearch;
                          print('open');
                        });
                      },
                      child: myicon()
                          .getico('search', Mycolors().grey, 30.0, 30.0)),
            ),
          ],
        ),
        backgroundColor: Mycolors().white,
        toolbarHeight: 70,
        elevation: 0.0,
      ),
      body: issearch
          ? mysearchclick()
          : Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CupertinoSegmentedControl<int>(
                        borderColor: Colors.transparent,
                        selectedColor: Mycolors().yellow,
                        unselectedColor: Mycolors().greyopen,
                        pressedColor: Mycolors().grey,
                        groupValue: groupv,
                        children: {
                          0: Mysegment().segmentitem('Restaurent'),
                          1: Mysegment().segmentitem('Food'),
                        },
                        onValueChanged: (groupvalue) {
                          setState(() {
                            groupv = groupvalue;
                            print(groupv);
                          });
                        }),
                  ),
                  Expanded(
                    child: Container(
                      child: segmntlist[groupv],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
