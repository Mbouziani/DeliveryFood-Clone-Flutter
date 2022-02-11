import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Input.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/bottomsheet.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/Widget/divider.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Screens/Start/singup.dart';
import 'package:food_delivrey/View/Screens/Start/smscode.dart';
import 'package:get/get.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.3),
              width: MediaQuery.of(context).size.width,
              color: Mycolors().orongefrom,
              child: mystack(),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.7),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Mycolors().white,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 24.0,
                    end: 24.0,
                    bottom: 10.0,
                  ),
                  child: mycolumn(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  firstmethod() {
    print("rak tema yak");
  }

  bool vb = false, isnotempty = false;
  final _phonecontroller = TextEditingController();
  visiblebutton() {
    setState(() {
      vb = !vb;
    });
  }

  isemptyinput(TextEditingController cntrl) {
    setState(() {
      if (cntrl.text.isNotEmpty) {
        isnotempty = true;
        print(cntrl.text);
      } else {
        isnotempty = false;
      }
    });
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
                  'assets/Images/tajin.jpg',
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyText().Txt_bodey2(
            textalign: TextAlign.center,
            textfont: FontWeight.w600,
            textcolor: Mycolors().dark,
            textdata: 'Login to your account',
            textsize: 24.0),
        const SizedBox(
          height: 13.0,
        ),
        MyText().Txt_bodey2(
            textalign: TextAlign.center,
            textfont: FontWeight.w400,
            textcolor: Mycolors().dark,
            textdata:
                'Welcome to deliver.io enter your details below to continue ordering.',
            textsize: 13.0),
        const SizedBox(
          height: 24.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: MyText().Txt_bodey2(
              textalign: TextAlign.left,
              textfont: FontWeight.w600,
              textcolor: Mycolors().dark,
              textdata: 'Enter your phone',
              textsize: 16.0),
        ),
        const SizedBox(
          height: 8.0,
        ),
        SizedBox(
          height: 55,
          child: MyInput().phoneinput(() => isemptyinput(_phonecontroller),
              isnotempty: isnotempty,
              context: context,
              mycontroller: _phonecontroller,
              opensheet: () => showbottmosheetflag()),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Mybutton().outllrgbtn(
            btnbackcolor: Mycolors().yellow,
            btntxt: 'Continue',
            btntxtcolor: Mycolors().white,
            context: context,
            pressme: () {
              {
                Get.off(const mysms());
              }
            }),
        const SizedBox(
          height: 33.0,
        ),
        Mydivider().divider(),
        const SizedBox(
          height: 33.0,
        ),
        Mybutton().icolrgbtn(
            btnbackcolor: Mycolors().background,
            btntxt: 'Continue with Google',
            btnicocolor: Mycolors().green,
            btnicon: 'user_circle',
            btntxtcolor: Mycolors().dark,
            context: context,
            pressme: () => firstmethod()),
        const SizedBox(
          height: 16.0,
        ),
        Mybutton().icolrgbtn(
            btnbackcolor: Colors.blueAccent,
            btntxt: 'Continue with Facebook',
            btnicocolor: Mycolors().green,
            btnicon: 'direct',
            btntxtcolor: Mycolors().dark,
            context: context,
            pressme: () => firstmethod()),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText().Txt_bodey2(
                textalign: TextAlign.center,
                textfont: FontWeight.w400,
                textcolor: Mycolors().dark,
                textdata: 'Don\'t have an account ?',
                textsize: 16.0),
            TextButton(
              onPressed: () {
                Get.off(const Mysignup());
              },
              child: MyText().Txt_bodey2(
                  textalign: TextAlign.center,
                  textfont: FontWeight.w600,
                  textcolor: Mycolors().yellow,
                  textdata: 'Sign UP',
                  textsize: 16.0),
            )
          ],
        )
      ],
    );
  }

  final countrycontroller = TextEditingController();
  showbottmosheetflag() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Mybtmsheet().mybottomflag(
                    context: context,
                    mycontroller: countrycontroller,
                    isnotempty: true,
                    clickitem: () {},
                  )),
            ));
  }
}
