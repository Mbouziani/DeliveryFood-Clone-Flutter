import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Mycards {
  Widget maincard({
    required String F_cover,
    required String F_name,
    required String F_rate,
    required String F_opentime,
    required String F_klmtime,
    required bool isfreedeliver,
    required VoidCallback F_function,
  }) {
    return GestureDetector(
      onTap: () {
        F_function();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: Container(
          height: 248.0,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Mycolors().white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Mycolors().grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                          image: DecorationImage(
                            image: AssetImage(
                              F_cover,
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                      top: 16.0,
                      left: 16.0,
                      child: isfreedeliver
                          ? Container(
                              decoration: BoxDecoration(
                                color: Mycolors().green,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 7.0),
                                child: MyText().Txt_bodey2(
                                    textdata: 'Free delivery',
                                    textsize: 16,
                                    textcolor: Mycolors().white,
                                    textfont: FontWeight.w400,
                                    textalign: TextAlign.left),
                              ),
                            )
                          : Container(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 22.0, left: 16.0, right: 16.0, bottom: 6.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText().Txt_bodey2(
                        textdata: F_name,
                        textsize: 16,
                        textcolor: Mycolors().dark,
                        textfont: FontWeight.w600,
                        textalign: TextAlign.left),
                    Row(
                      children: [
                        myicon().getico('stars', Mycolors().yellow, 15.0, 16.0),
                        SizedBox(
                          width: 6.0,
                        ),
                        MyText().Txt_bodey2(
                            textdata: F_rate,
                            textsize: 14,
                            textcolor: Mycolors().yellow,
                            textfont: FontWeight.w400,
                            textalign: TextAlign.left),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText().Txt_bodey2(
                        textdata: F_klmtime,
                        textsize: 14,
                        textcolor: Mycolors().dark,
                        textfont: FontWeight.w400,
                        textalign: TextAlign.left),
                    MyText().Txt_bodey2(
                        textdata: F_opentime,
                        textsize: 14,
                        textcolor: Mycolors().orongefrom,
                        textfont: FontWeight.w400,
                        textalign: TextAlign.left),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mysmalcard(
      {required BuildContext context,
      required String F_name,
      required String F_cover,
      required String F_weigth,
      required String F_price,
      required VoidCallback clickitem}) {
    return Container(
      decoration: BoxDecoration(
        color: Mycolors().white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Mycolors().grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Mycolors().white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14.0),
                      topRight: Radius.circular(14.0)),
                  image: DecorationImage(
                    image: AssetImage(
                      F_cover,
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText().Txt_bodey2(
                    textdata: F_name,
                    textsize: 14,
                    textcolor: Mycolors().dark,
                    textfont: FontWeight.w600,
                    textalign: TextAlign.left),
                SizedBox(
                  height: 6.0,
                ),
                MyText().Txt_bodey2(
                    textdata: '$F_weigth g',
                    textsize: 14,
                    textcolor: Mycolors().grey,
                    textfont: FontWeight.w400,
                    textalign: TextAlign.left),
                SizedBox(
                  height: 8.0,
                ),
                Mybutton().outllrgbtn(
                    btntxtcolor: Mycolors().dark,
                    btnbackcolor: Mycolors().background,
                    btntxt: '\$$F_price',
                    context: context,
                    pressme: () {
                      clickitem();
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardfood() {
    return Container(
      decoration: BoxDecoration(
        color: Mycolors().white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Mycolors().grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Container(
        height: 500.0,
        decoration: BoxDecoration(
            color: Mycolors().white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0)),
            image: DecorationImage(
              image: AssetImage(
                'assets/Images/tajin.jpg',
              ),
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  Widget ordercard(
      {required BuildContext context,
      required String R_name,
      required String R_logo,
      required String orderstatus,
      required String btnstatut}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Mycolors().greyopen,
              blurRadius: 4.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 16.0, end: 27.0, top: 15, bottom: 15.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundColor: Mycolors().orongefrom,
                      radius: 50.0,
                      backgroundImage: AssetImage(R_logo),
                    ),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText().Txt_bodey2(
                            textdata: R_name,
                            textsize: 16,
                            textcolor: Mycolors().dark,
                            textfont: FontWeight.w600,
                            textalign: TextAlign.left),
                        SizedBox(
                          height: 1.0,
                        ),
                        MyText().Txt_bodey2(
                            textdata: orderstatus,
                            textsize: 14,
                            textcolor: colorstatu(orderstatus),
                            textfont: FontWeight.w400,
                            textalign: TextAlign.left),
                      ],
                    ),
                  ),
                  myicon()
                      .getico('chevron_big_right', Mycolors().grey, 22.0, 15.0),
                ],
              ),
            ),
            Container(
              color: Mycolors().white,
              child: ListView.builder(
                  padding: EdgeInsetsDirectional.only(start: 6.0, end: 16.0),
                  physics: new NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return ListTile(
                      title: MyText().Txt_bodey2(
                          textdata: "Viennese pork schnitzel",
                          textsize: 16,
                          textcolor: Mycolors().dark,
                          textfont: FontWeight.w400,
                          textalign: TextAlign.left),
                      trailing: MyText().Txt_bodey2(
                          textdata: "\$25",
                          textsize: 16,
                          textcolor: Mycolors().grey,
                          textfont: FontWeight.w400,
                          textalign: TextAlign.left),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Mybutton().outllrgbtn(
                  btntxtcolor: btnstatut == 'To order'
                      ? Mycolors().white
                      : Mycolors().dark,
                  btnbackcolor: btnstatut == 'To order'
                      ? Mycolors().yellow
                      : Mycolors().background,
                  btntxt: btnstatut,
                  context: context,
                  pressme: () {}),
            ),
          ],
        ),
      ),
    );
  }

  Color colorstatu(String orderstatus) {
    Color retorncolor = Mycolors().grey;
    switch (orderstatus) {
      case 'Complete the order':
        retorncolor = Mycolors().grey;
        break;
      case 'On the Way':
        retorncolor = Mycolors().yellow;
        break;
      case 'Deliverd':
        retorncolor = Mycolors().green;
        break;
      case 'Canceled':
        retorncolor = Mycolors().orongefrom;
        break;
    }

    return retorncolor;
  }
}
