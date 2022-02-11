import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Input.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/bottomsheet.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Screens/home/homepg.dart';
import 'package:food_delivrey/View/Screens/navigator/navscreen.dart';
import 'package:food_delivrey/View/Screens/testscreen.dart';
import 'package:get/get.dart';

class mysms extends StatefulWidget {
  const mysms({Key? key}) : super(key: key);

  @override
  _mysmsState createState() => _mysmsState();
}

class _mysmsState extends State<mysms> {
  final _smscodecontroller = TextEditingController();
  final number = '+1 212 507 1690';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            mystack(),
            Container(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.7),
                color: Mycolors().white,
                child: mycolumn()),
          ],
        ),
      ),
    );
  }

  showbottmosheeterror(String msgError) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Mybtmsheet()
                    .mysheeterror(errormsg: msgError, context: this.context),
              ),
            ));
  }

  Widget mystack() {
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
                  'assets/Images/tacos.jpg',
                ),
                fit: BoxFit.cover,
              )),
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
      ],
    );
  }

  Widget mycolumn() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 24.0,
        start: 24.0,
        end: 24.0,
        bottom: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyText().Txt_bodey2(
              textalign: TextAlign.center,
              textfont: FontWeight.w600,
              textcolor: Mycolors().dark,
              textdata: 'SMS code',
              textsize: 24.0),
          const SizedBox(
            height: 13.0,
          ),
          MyText().Txt_bodey2(
              textalign: TextAlign.center,
              textfont: FontWeight.w400,
              textcolor: Mycolors().dark,
              textdata: 'Enter varification code from SMS, which sent'
                  '\nto  $number',
              textsize: 13.0),
          const SizedBox(
            height: 40.0,
          ),
          SizedBox(
            height: 55,
            child: MyInput().simpleinput(
                onchange: () {
                  print(_smscodecontroller.text);
                },
                type: TextInputType.number,
                context: context,
                mycontroller: _smscodecontroller,
                myhint: 'SMS Code'),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Mybutton().outllrgbtn(
              btnbackcolor: Mycolors().yellow,
              btntxt: 'Verify',
              btntxtcolor: Mycolors().white,
              context: context,
              pressme: () {
                if (_smscodecontroller.text == '12345') {
                  Get.off(const MyNavScreen());
                } else if (_smscodecontroller.text.isEmpty) {
                  showbottmosheeterror('The Text Field is Empty');
                } else {
                  showbottmosheeterror('The code was entered incorrectly');
                }
              }),
          const SizedBox(
            height: 20.0,
          ),
          Mybutton().outllrgbtn(
              btnbackcolor: Mycolors().white,
              btntxt: 'Resend code (2:29)',
              btntxtcolor: Mycolors().grey,
              context: context,
              pressme: () {}),
          const SizedBox(
            height: 33.0,
          ),
        ],
      ),
    );
  }
}
