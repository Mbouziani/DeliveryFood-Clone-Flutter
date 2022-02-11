import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';
import 'package:food_delivrey/View/Screens/Start/login.dart';
import 'package:food_delivrey/View/Screens/Start/singup.dart';
import 'package:food_delivrey/View/Screens/Start/smscode.dart';
import 'package:food_delivrey/View/Screens/carts/orderpg.dart';
import 'package:food_delivrey/View/Screens/home/Scr_inforesto.dart';
import 'package:food_delivrey/View/Screens/home/homepg.dart';
import 'package:food_delivrey/View/Screens/more/morepg.dart';
import 'package:food_delivrey/View/Screens/search/searchmain.dart';

import 'package:google_fonts/google_fonts.dart';

class MyNavScreen extends StatefulWidget {
  const MyNavScreen({Key? key}) : super(key: key);

  @override
  _MyNavScreenState createState() => _MyNavScreenState();
}

class _MyNavScreenState extends State<MyNavScreen> {
  int curIndx = 0;
  final screens = [Myhome(), Myorder(), mysearch(), Mymore()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: curIndx,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              curIndx = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: curIndx,
          backgroundColor: Mycolors().white,
          selectedItemColor: Mycolors().yellow,
          showUnselectedLabels: false,
          selectedLabelStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          )),
          unselectedItemColor: Mycolors().grey,
          items: [
            BottomNavigationBarItem(
                activeIcon: myicon()
                    .getico('home_alt_outline', Mycolors().yellow, 30.0, 30.0),
                icon: myicon()
                    .getico('home_alt_outline', Mycolors().grey, 30.0, 30.0),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon:
                    myicon().getico('carts', Mycolors().yellow, 30.0, 30.0),
                icon: myicon().getico('carts', Mycolors().grey, 30.0, 30.0),
                label: 'Carts'),
            BottomNavigationBarItem(
                activeIcon:
                    myicon().getico('search', Mycolors().yellow, 30.0, 30.0),
                icon: myicon().getico('search', Mycolors().grey, 30.0, 30.0),
                label: 'Search'),
            BottomNavigationBarItem(
                activeIcon: myicon()
                    .getico('user_circle', Mycolors().yellow, 30.0, 30.0),
                icon:
                    myicon().getico('user_circle', Mycolors().grey, 30.0, 30.0),
                label: 'Profile')
          ]),
    );
  }
}
