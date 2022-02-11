// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class myicon {
  Widget getico(
    String svgname,
    Color svgcolor,
    double svgheight,
    svgwidth,
  ) {
    String assetName = 'assets/Icons/$svgname.svg';
    final Widget svgIcon = SvgPicture.asset(
      assetName,
      color: svgcolor,
      height: svgheight,
      width: svgwidth,
    );
    return svgIcon;
  }
}
