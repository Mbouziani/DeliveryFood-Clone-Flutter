import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Input.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({Key? key}) : super(key: key);

  @override
  _MyappbarState createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  bool issearch = false;

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
                        textdata: 'Popular',
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
    );
  }
}
