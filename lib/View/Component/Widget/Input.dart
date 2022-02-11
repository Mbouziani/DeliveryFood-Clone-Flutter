import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';
import 'package:google_fonts/google_fonts.dart';

class MyInput {
  var currentFocus;

  //FocusNode searchfocus = FocusNode();
  Widget searchinput(Function visibleme,
      {required bool isvisible,
      required BuildContext context,
      required TextEditingController mycontroller}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TextFormField(
            autofocus: isvisible,
            controller: mycontroller,
            onTap: () {
              if (!isvisible) {
                visibleme();
              }
            },
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
                  child: myicon().getico('search', Mycolors().grey, 25.0, 25.0),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 25,
                  minHeight: 25,
                ),
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                suffixIcon: isvisible
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: InkWell(
                          onTap: () {
                            mycontroller.clear();
                          },
                          child: myicon()
                              .getico('off_close', Mycolors().grey, 20.0, 20.0),
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
        ),
        Visibility(
          visible: isvisible,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 40.0,
            child: TextButton(
                onPressed: () {
                  visibleme();
                  currentFocus = FocusScope.of(context);

                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                },
                child: MyText().Txt_body(
                    textdata: 'Cancel',
                    textsize: 17,
                    textcolor: Mycolors().yellow)),
          ),
        )
      ],
    );
  }

//phone input
  Widget phoneinput(Function checkempty,
      {required BuildContext context,
      required bool isnotempty,
      required TextEditingController mycontroller,
      required VoidCallback opensheet}) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: mycontroller,
      onTap: () {},
      onChanged: (value) => checkempty(),
      decoration: InputDecoration(
          filled: true,
          fillColor: Mycolors().background,
          contentPadding: const EdgeInsets.symmetric(vertical: 9.0),
          hintText: 'Enter your phone',
          hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Mycolors().grey,
            letterSpacing: -0.41,
          )),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 12.0, top: 9.0, bottom: 9.0, end: 5.0),
            child: InkWell(
              onTap: () {
                opensheet();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flag.fromCode(FlagsCode.MA, height: 13, width: 20),
                  const SizedBox(
                    width: 5,
                  ),
                  MyText().Txt_Head(
                      textfont: FontWeight.w500,
                      textcolor: Mycolors().dark,
                      textsize: 14,
                      textdata: '+212'),
                  myicon().getico('chevron_down', Mycolors().grey, 25.0, 25.0),
                ],
              ),
            ),
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
                      checkempty();
                    },
                    child: myicon()
                        .getico('off_close', Mycolors().grey, 20.0, 20.0),
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.0, color: Mycolors().background),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.0, color: Mycolors().background),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.0, color: Mycolors().background),
          )),
    );
  }

//clear input
  Widget simpleinput(
      {required BuildContext context,
      required TextEditingController mycontroller,
      required TextInputType type,
      required VoidCallback onchange,
      required String myhint}) {
    return Expanded(
      child: TextFormField(
        keyboardType: type,
        controller: mycontroller,
        onTap: () {},
        onChanged: (value) {
          onchange();
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: Mycolors().background,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 13.0, horizontal: 24),
            hintText: myhint,
            hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Mycolors().grey,
            )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0.0, color: Mycolors().background),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0.0, color: Mycolors().background),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 0.0, color: Mycolors().background),
            )),
      ),
    );
  }

//

  Widget MyTextField(
      {required VoidCallback ontapsufix,
      required VoidCallback ontaprefix,
      required Widget prefix,
      required Widget sufix,
      required bool isnotempty,
      required BuildContext context,
      required TextEditingController mycontroller,
      required TextInputType type,
      required VoidCallback onchange,
      required String myhint}) {
    return TextFormField(
      keyboardType: type,
      controller: mycontroller,
      onTap: () {},
      onChanged: (value) {
        onchange();
      },
      decoration: InputDecoration(
          filled: true,
          fillColor: Mycolors().background,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 13.0, horizontal: 24),
          hintText: myhint,
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
            child: InkWell(
                onTap: () {
                  ontapsufix();
                },
                child:
                    prefix), // myicon().getico('search', Mycolors().grey, 25.0, 25.0),
          ),
          suffixIcon: isnotempty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: InkWell(
                      onTap: () {
                        ontapsufix(); //mycontroller.clear();
                      },
                      child:
                          sufix // myicon().getico('off_close', Mycolors().grey, 20.0, 20.0),
                      ),
                )
              : null,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 25,
            minHeight: 25,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 20,
            minHeight: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.0, color: Mycolors().background),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.0, color: Mycolors().background),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 0.0, color: Mycolors().background),
          )),
    );
  }
}
