import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Rowtitle.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class mysearchclick extends StatefulWidget {
  const mysearchclick({Key? key}) : super(key: key);

  @override
  _mysearchclickState createState() => _mysearchclickState();
}

class _mysearchclickState extends State<mysearchclick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 20,
                itemBuilder: (BuildContext conte, i) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          myicon()
                              .getico('refresh', Mycolors().grey, 25.0, 25.0),
                          SizedBox(
                            width: 22,
                          ),
                          Expanded(
                            child: MyText().Txt_bodey2(
                                textalign: TextAlign.left,
                                textfont: FontWeight.w400,
                                textcolor: Mycolors().grey,
                                textdata: 'djaj bz wlma',
                                textsize: 18.0),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          InkWell(
                            onTap: () {
                              print('object');
                            },
                            child: myicon().getico(
                                'close_big', Mycolors().grey, 25.0, 25.0),
                          ),
                        ],
                      ));
                }),
          )
        ],
      ),
    );
  }
}
