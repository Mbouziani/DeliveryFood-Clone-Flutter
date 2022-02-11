// ignore_for_file: non_constant_identifier_names, file_names

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MyText {
  // Headr Text
  Widget Txt_Head({
    required String textdata,
    required double textsize,
    required Color textcolor,
    required FontWeight textfont,
  }) {
    return Text(
      textdata,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: textfont,
        color: textcolor,
        letterSpacing: 0.41,
      )),
    );
  }

  //
  Widget Txt_bodey2({
    required String textdata,
    required double textsize,
    required Color textcolor,
    required FontWeight textfont,
    required TextAlign textalign,
  }) {
    return Text(
      textdata,
      textAlign: textalign,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: textfont,
        color: textcolor,
      )),
    );
  }

  ////
  Widget Txt_body({
    required String textdata,
    required double textsize,
    required Color textcolor,
  }) {
    return Text(textdata,
        style: TextStyle(
          fontSize: textsize,
          fontWeight: FontWeight.w400,
          color: textcolor,
          letterSpacing: 0.41,
        ));
  }

  /* // Subtitle Text
  Widget Txt_Sub(String textdata, double textsize, Color textcolor) {
    return Text(
      textdata,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: FontWeight.w700,
        color: textcolor,
      )),
    );
  }

  // Body Text
  Widget Txt_Body(String textdata, double textsize, Color textcolor) {
    return Text(
      textdata,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: FontWeight.w700,
        color: textcolor,
      )),
    );
  }

  // Button Text
  Widget Txt_button(String textdata, double textsize, Color textcolor) {
    return Text(
      textdata,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: FontWeight.w700,
        color: textcolor,
      )),
    );
  }

  // Caption Text
  Widget Txt_Caption(String textdata, double textsize, Color textcolor) {
    return Text(
      textdata,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: FontWeight.w700,
        color: textcolor,
      )),
    );
  }

  // Overline Text
  Widget Txt_Overline(String textdata, double textsize, Color textcolor) {
    return Text(
      textdata,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontSize: textsize,
        fontWeight: FontWeight.w700,
        color: textcolor,
      )),
    );
  } */
}
