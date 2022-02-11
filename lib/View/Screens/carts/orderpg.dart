import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/Widget/lists.dart';
import 'package:food_delivrey/View/Component/Widget/segment.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Screens/carts/emptyorderpg.dart';

class Myorder extends StatefulWidget {
  const Myorder({Key? key}) : super(key: key);

  @override
  _MyorderState createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  late int groupv = 0;
  final isempty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolors().white,
        elevation: 0.0,
        title: MyText().Txt_bodey2(
            textdata: 'My orders',
            textsize: 20,
            textcolor: Mycolors().dark,
            textfont: FontWeight.w600,
            textalign: TextAlign.center),
        centerTitle: true,
      ),
      body: Container(
        color: Mycolors().white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    0: Mysegment().segmentitem('Active'),
                    1: Mysegment().segmentitem('Historique'),
                  },
                  onValueChanged: (groupvalue) {
                    setState(() {
                      groupv = groupvalue;
                      print(groupv);
                    });
                  }),
            ),
            Expanded(
              child: isempty ? emptyorder() : Mylist().L_order(),
            )
          ],
        ),
      ),
    );
  }
}
