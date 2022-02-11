import 'package:flutter/material.dart';
import 'package:food_delivrey/View/Component/Widget/Rowtitle.dart';
import 'package:food_delivrey/View/Component/Widget/Text.dart';
import 'package:food_delivrey/View/Component/colors/Color.dart';
import 'package:food_delivrey/View/Component/icons/icon.dart';

class Mymore extends StatelessWidget {
  const Mymore({Key? key}) : super(key: key);

  static List<String> settingname = [
    'Profile information',
    'Payment method',
    'Address',
    'Refer to friends',
    'Notifications'
  ];
  static List<String> settingdesc = [
    'Change your account information',
    'Add your credit & debit cards',
    'Add your delivery location',
    'Share the app with your freinds',
    'Manage your notification setting'
  ];
  static List<String> settingicon = [
    'user',
    'credit_card',
    'location_outline',
    'share_outline',
    'notification_outline'
  ];
  static List<String> moreicon = ['stars', 'info_circle_outline'];
  static List<String> morename = ['Rate Us', 'FAQ'];
  static List<String> moredesc = [
    'Rate out app in App Store',
    'Frequently asked questions'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Mycolors().white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Myrow().rowtitle(
                        Rw_name: 'Account settings',
                        Rw_subname: '',
                        Rw_subnamecolor: Mycolors().dark,
                        MoreEvent: () {}),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: settingname.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsetsDirectional.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: CircleAvatar(
                                  backgroundColor: Mycolors().white,
                                  radius: 50.0,
                                  child: myicon().getico(
                                      settingicon[i].toString(),
                                      Mycolors().dark,
                                      26.0,
                                      15.0),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText().Txt_bodey2(
                                        textdata: settingname[i].toString(),
                                        textsize: 16,
                                        textcolor: Mycolors().dark,
                                        textfont: FontWeight.w600,
                                        textalign: TextAlign.left),
                                    SizedBox(
                                      height: 1.0,
                                    ),
                                    MyText().Txt_bodey2(
                                        textdata: settingdesc[i].toString(),
                                        textsize: 14,
                                        textcolor: Mycolors().grey,
                                        textfont: FontWeight.w400,
                                        textalign: TextAlign.left),
                                  ],
                                ),
                              ),
                              myicon().getico(
                                  'chevron_right', Mycolors().grey, 22.0, 15.0),
                            ],
                          ),
                        );
                      })
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              Column(
                children: [
                  Myrow().rowtitle(
                      Rw_name: 'More',
                      Rw_subname: '',
                      Rw_subnamecolor: Mycolors().dark,
                      MoreEvent: () {}),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: moredesc.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsetsDirectional.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: CircleAvatar(
                                  backgroundColor: Mycolors().white,
                                  radius: 50.0,
                                  child: myicon().getico(moreicon[i].toString(),
                                      Mycolors().dark, 26.0, 15.0),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText().Txt_bodey2(
                                        textdata: morename[i].toString(),
                                        textsize: 16,
                                        textcolor: Mycolors().dark,
                                        textfont: FontWeight.w600,
                                        textalign: TextAlign.left),
                                    SizedBox(
                                      height: 1.0,
                                    ),
                                    MyText().Txt_bodey2(
                                        textdata: moredesc[i].toString(),
                                        textsize: 14,
                                        textcolor: Mycolors().grey,
                                        textfont: FontWeight.w400,
                                        textalign: TextAlign.left),
                                  ],
                                ),
                              ),
                              myicon().getico(
                                  'chevron_right', Mycolors().grey, 22.0, 15.0),
                            ],
                          ),
                        );
                      })
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.all(10.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundColor: Mycolors().white,
                        radius: 50.0,
                        child: myicon()
                            .getico('log_out', Mycolors().dark, 30.0, 15.0),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText().Txt_bodey2(
                              textdata: 'Logout',
                              textsize: 16,
                              textcolor: Mycolors().dark,
                              textfont: FontWeight.w600,
                              textalign: TextAlign.left),
                          SizedBox(
                            height: 1.0,
                          ),
                          MyText().Txt_bodey2(
                              textdata: 'log out of your account',
                              textsize: 14,
                              textcolor: Mycolors().grey,
                              textfont: FontWeight.w400,
                              textalign: TextAlign.left),
                        ],
                      ),
                    ),
                    myicon()
                        .getico('chevron_right', Mycolors().grey, 22.0, 15.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
