import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/Widget/button.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Screens/Start/login.dart';
import 'package:get/get.dart';

class Myonboarding extends StatefulWidget {
  const Myonboarding({Key? key}) : super(key: key);

  @override
  _MyonboardingState createState() => _MyonboardingState();
}

class _MyonboardingState extends State<Myonboarding> {
  final int _numespages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> mylist = [];
    for (int i = 0; i < _numespages; i++) {
      mylist.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return mylist;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 10.0,
      decoration: BoxDecoration(
          color: isActive ? Mycolors().yellow : Mycolors().greyopen,
          borderRadius: const BorderRadius.all(
            (Radius.circular(12)),
          )),
    );
  }

  Widget mystack() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
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

  Widget myblowerstack(String imgnames) {
    return Container(
      color: Mycolors().white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Image.asset(
          imgnames,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors().white,
      body: Column(
        children: [
          Expanded(child: mystack()),
          Expanded(
              flex: 2,
              child: PageView(
                physics: const ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int pagenum) {
                  setState(() {
                    _currentPage = pagenum;
                  });
                },
                children: [
                  Column(
                    children: [
                      MyText().Txt_bodey2(
                          textalign: TextAlign.center,
                          textfont: FontWeight.w600,
                          textcolor: Mycolors().dark,
                          textdata:
                              'Order from your favourite stores or vendors',
                          textsize: 24.0),
                      const SizedBox(
                        height: 30.0,
                      ),
                      myblowerstack('assets/Images/cock.png'),
                    ],
                  ),
                  Column(
                    children: [
                      MyText().Txt_bodey2(
                          textalign: TextAlign.center,
                          textfont: FontWeight.w600,
                          textcolor: Mycolors().dark,
                          textdata:
                              'Choose from a wide range of  delicious meals',
                          textsize: 24.0),
                      const SizedBox(
                        height: 30.0,
                      ),
                      myblowerstack('assets/Images/delivery.png'),
                    ],
                  ),
                  Column(
                    children: [
                      MyText().Txt_bodey2(
                          textalign: TextAlign.center,
                          textfont: FontWeight.w600,
                          textcolor: Mycolors().dark,
                          textdata: 'Enjoy instant delivery and payment',
                          textsize: 24.0),
                      const SizedBox(
                        height: 30.0,
                      ),
                      myblowerstack('assets/Images/Orderfood.png'),
                    ],
                  )
                ],
              )),
          Container(
            color: Mycolors().white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Mybutton().outllrgbtn(
                      btnbackcolor: Mycolors().yellow,
                      btntxt: _currentPage < 2 ? 'Next ' : 'Continue',
                      btntxtcolor: Mycolors().white,
                      context: this.context,
                      pressme: () {
                        _currentPage == 2
                            ? Get.off(const Mylogin())
                            : setState(() {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 250),
                                    curve: Curves.ease);
                              });
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Mybutton().outllrgbtn(
                      btnbackcolor: Mycolors().white,
                      btntxt: 'Skip',
                      btntxtcolor: Mycolors().dark,
                      context: this.context,
                      pressme: () {
                        Get.off(const Mylogin());
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
