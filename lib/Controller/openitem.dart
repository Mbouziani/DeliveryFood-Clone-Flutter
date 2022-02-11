import 'package:flutter/cupertino.dart';
import 'package:food_delivrey/Controller/LogiqueSheet.dart';
import 'package:food_delivrey/View/Component/Widget/bottomsheet.dart';
import 'package:food_delivrey/View/Screens/home/Scr_inforesto.dart';

import 'package:get/get.dart';

class myproductevent {
  openproduct({required BuildContext context, required String itemid}) {
    LogiqueSheet().opensheet(
        context: context,
        mysheet: Mybtmsheet().mybottomfood(context: context, itemid: itemid));
  }

  openresorent({required BuildContext context, required String itemid}) {
    Get.to(Myresto(), arguments: [itemid]);
  }
}
