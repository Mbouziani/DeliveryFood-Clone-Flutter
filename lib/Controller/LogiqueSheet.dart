import 'package:flutter/material.dart';

class LogiqueSheet {
  opensheet({required BuildContext context, required Widget mysheet}) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: mysheet),
            ));
  }
}

/* 
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
                  child: Mybtmsheet().mybottomfood(context: context)),
            ));
  } */
