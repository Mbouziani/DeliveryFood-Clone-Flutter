import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Mybutton {
  Mycolors color = Mycolors();
  MyText text = MyText();
  myicon icon = myicon();
  //flatbutton with icon
  Widget icolrgbtn(
      {required Color btntxtcolor,
      required Color btnbackcolor,
      required Color btnicocolor,
      required String btntxt,
      required String btnicon,
      required BuildContext context,
      required Function pressme}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {
          pressme();
        },
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0.0),
            backgroundColor: MaterialStateProperty.all<Color>(btnbackcolor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
        icon: icon.getico(btnicon, btnicocolor, 20.0, 20.0),
        label: text.Txt_Head(
            textfont: FontWeight.w400,
            textcolor: btntxtcolor,
            textdata: btntxt,
            textsize: 16.0),
      ),
    );
  }

// outline button
  Widget outllrgbtn(
      {required Color btntxtcolor,
      required Color btnbackcolor,
      required String btntxt,
      required BuildContext context,
      required VoidCallback pressme}) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: MaterialButton(
          onPressed: () {
            pressme();
          },
          color: btnbackcolor,
          elevation: 0.0,
          highlightElevation: 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: text.Txt_Head(
              textfont: FontWeight.w600,
              textcolor: btntxtcolor,
              textdata: btntxt,
              textsize: 16.0),
        ));
  }

// outline button
  Widget iconbtn(
      {required Color btnbackcolor,
      required Color iconcolor,
      required String iconnamecolor,
      required BuildContext context,
      required VoidCallback pressme}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: btnbackcolor, borderRadius: BorderRadius.circular(10.0)),
      child: IconButton(
        onPressed: () => pressme(),
        icon: icon.getico(iconnamecolor, iconcolor, 30.0, 30.0),
      ),
    );
  }
}
