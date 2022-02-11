// ignore_for_file: avoid_print

import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivrey/View/Component/Widget/Input.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Mybtmsheet {
  Widget mysheeterror(
      {required String errormsg, required BuildContext context}) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFEE4DB),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: Row(
          children: [
            Expanded(
              child: MyText().Txt_bodey2(
                  textdata: errormsg,
                  textfont: FontWeight.w400,
                  textalign: TextAlign.start,
                  textsize: 16.0,
                  textcolor: Mycolors().orongeto),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: myicon()
                  .getico('close_big', Mycolors().orongefrom, 30.0, 30.0),
            )
          ],
        ),
      ),
    );
  }

  Widget mybottomflag(
      {required BuildContext context,
      required TextEditingController mycontroller,
      required bool isnotempty,
      required VoidCallback clickitem}) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Mycolors().white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 5.0,
                width: 36.0,
                decoration: BoxDecoration(
                    color: Mycolors().grey,
                    borderRadius: BorderRadius.circular(2.5))),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: mycontroller,
                    onTap: () {},
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Mycolors().background,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 9.0),
                        hintText: 'Search',
                        hintStyle: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w400,
                          color: Mycolors().grey,
                          letterSpacing: -0.41,
                        )),
                        prefixIcon: Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 12.0, top: 9.0, bottom: 9.0, end: 5.0),
                          child: myicon()
                              .getico('search', Mycolors().grey, 25.0, 25.0),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 25,
                          minHeight: 25,
                        ),
                        suffixIconConstraints: const BoxConstraints(
                          minWidth: 20,
                          minHeight: 20,
                        ),
                        suffixIcon: isnotempty
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: InkWell(
                                  onTap: () {
                                    mycontroller.clear();
                                  },
                                  child: myicon().getico(
                                      'off_close', Mycolors().grey, 20.0, 20.0),
                                ),
                              )
                            : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 0.0, color: Mycolors().background),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 0.0, color: Mycolors().background),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 0.0, color: Mycolors().background),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: MyText().Txt_body(
                          textdata: 'Cancel',
                          textsize: 17,
                          textcolor: Mycolors().yellow)),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              color: Mycolors().background,
              height: 4,
              width: MediaQuery.of(context).size.width,
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 40,
                  itemBuilder: (_, i) {
                    return ListTile(
                      selectedColor: Mycolors().dark,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      leading: const Flag.fromString('MA', width: 26.0),
                      title: MyText().Txt_bodey2(
                          textdata: 'Marocco',
                          textsize: 16,
                          textcolor: Mycolors().dark,
                          textfont: FontWeight.w400,
                          textalign: TextAlign.left),
                      trailing: MyText().Txt_bodey2(
                          textdata: '+212',
                          textsize: 16,
                          textcolor: Mycolors().grey,
                          textfont: FontWeight.w400,
                          textalign: TextAlign.center),
                      onTap: () {
                        clickitem();
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget mybottomlocation(
      {required BuildContext context,
      required TextEditingController mycontroller,
      required bool isnotempty,
      required VoidCallback clickitem}) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Mycolors().white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 5.0,
                width: 36.0,
                decoration: BoxDecoration(
                    color: Mycolors().grey,
                    borderRadius: BorderRadius.circular(2.5))),
            const SizedBox(
              height: 19.0,
            ),
            ListTile(
              selectedColor: Mycolors().dark,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              leading:
                  myicon().getico('close_big', Mycolors().dark, 30.0, 30.0),
              title: MyText().Txt_bodey2(
                  textdata: 'Your location',
                  textsize: 20,
                  textcolor: Mycolors().dark,
                  textfont: FontWeight.w600,
                  textalign: TextAlign.center),
            ),
            const SizedBox(
              height: 27.0,
            ),
            MyText().Txt_bodey2(
                textalign: TextAlign.center,
                textfont: FontWeight.w600,
                textcolor: Mycolors().dark,
                textdata: 'Find restaurants near you',
                textsize: 24.0),
            const SizedBox(
              height: 13.0,
            ),
            MyText().Txt_bodey2(
                textalign: TextAlign.center,
                textfont: FontWeight.w400,
                textcolor: Mycolors().dark,
                textdata:
                    'Please enter your location or allow access to your location to find restaurants near you',
                textsize: 14.0),
            const SizedBox(
              height: 32.0,
            ),
            TextFormField(
              controller: mycontroller,
              onTap: () {},
              onChanged: (value) {},
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Mycolors().background,
                  contentPadding: const EdgeInsets.symmetric(vertical: 9.0),
                  hintText: 'Search',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400,
                    color: Mycolors().grey,
                    letterSpacing: -0.41,
                  )),
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 12.0, top: 9.0, bottom: 9.0, end: 5.0),
                    child:
                        myicon().getico('search', Mycolors().grey, 25.0, 25.0),
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 25,
                    minHeight: 25,
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  suffixIcon: isnotempty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: InkWell(
                            onTap: () {
                              mycontroller.clear();
                            },
                            child: myicon().getico(
                                'off_close', Mycolors().grey, 20.0, 20.0),
                          ),
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(width: 0.0, color: Mycolors().background),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(width: 0.0, color: Mycolors().background),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(width: 0.0, color: Mycolors().background),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 40,
                  itemBuilder: (_, i) {
                    return ListTile(
                      selectedColor: Mycolors().dark,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      leading: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: myicon().getico(
                            'directionsign', Mycolors().grey, 20.0, 20.0),
                      ),
                      title: MyText().Txt_bodey2(
                          textdata: 'Oujda',
                          textsize: 16,
                          textcolor: Mycolors().dark,
                          textfont: FontWeight.w600,
                          textalign: TextAlign.left),
                      subtitle: MyText().Txt_bodey2(
                          textdata: 'Al Airfane',
                          textsize: 14,
                          textcolor: Mycolors().dark,
                          textfont: FontWeight.w400,
                          textalign: TextAlign.left),
                      onTap: () {
                        clickitem();
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget mybottomfood({required BuildContext context, required String itemid}) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: BoxDecoration(
          color: Mycolors().white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/Images/tajin.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0)),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  child: Container(
                      height: 5.0,
                      width: 36.0,
                      decoration: BoxDecoration(
                          color: Mycolors().white,
                          borderRadius: BorderRadius.circular(2.5))),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(24.0),
                physics: BouncingScrollPhysics(),
                children: [
                  MyText().Txt_bodey2(
                      textalign: TextAlign.left,
                      textfont: FontWeight.w600,
                      textcolor: Mycolors().dark,
                      textdata: 'Hungarian goulash soup',
                      textsize: 24.0),
                  const SizedBox(
                    height: 13.0,
                  ),
                  MyText().Txt_bodey2(
                      textalign: TextAlign.left,
                      textfont: FontWeight.w400,
                      textcolor: Mycolors().dark,
                      textdata:
                          'Thick soup with spicy spice with bell peppers, potatoes, beef, onions, carrots and garlic,Thick soup with spicy spice with bell peppers, potatoes, beef, onions, carrots and garlic,',
                      textsize: 14.0),
                  const SizedBox(
                    height: 16.0,
                  ),
                  MyText().Txt_bodey2(
                      textdata: '220 g',
                      textsize: 14,
                      textcolor: Mycolors().grey,
                      textfont: FontWeight.w400,
                      textalign: TextAlign.left),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Mybutton().iconbtn(
                      btnbackcolor: Mycolors().background,
                      iconcolor: Mycolors().grey,
                      iconnamecolor: 'minus',
                      context: context,
                      pressme: () {}),
                  const SizedBox(
                    width: 16.0,
                  ),
                  MyText().Txt_bodey2(
                      textdata: '88',
                      textsize: 18,
                      textcolor: Mycolors().dark,
                      textfont: FontWeight.w400,
                      textalign: TextAlign.left),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Mybutton().iconbtn(
                      btnbackcolor: Mycolors().background,
                      iconcolor: Mycolors().grey,
                      iconnamecolor: 'plus',
                      context: context,
                      pressme: () {}),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                      child: Mybutton().outllrgbtn(
                          btntxtcolor: Mycolors().white,
                          btnbackcolor: Mycolors().yellow,
                          btntxt: 'Add \$24',
                          context: context,
                          pressme: () {
                            print(itemid);
                          }))
                ],
              ),
            )
          ],
        ));
  }
}
