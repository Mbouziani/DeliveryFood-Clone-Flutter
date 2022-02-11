import 'package:flutter/material.dart';
import 'package:food_delivrey/Controller/openitem.dart';
import 'package:food_delivrey/View/Component/Widget/card.dart';

class Mylist {
  List<String> IDcontent = ['1', '2', '3', '4', '5', '6', '7'];
  List<String> Ncontent = [
    'Tacos',
    'Tajin',
    'Burger',
    'Fruit',
    'Fanckouch',
    'Djaje',
    'Jalban'
  ];
  List<String> Pcontent = ['25', '12', '20', '45', '10', '13', '7'];
  List<String> Wcontent = ['150', '250', '200', '500', '120', '220', '260'];
  List<String> Ccontent = [
    'assets/Images/tacos.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/burger.jpg',
    'assets/Images/tacos.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/burger.jpg',
    'assets/Images/tajin.jpg'
  ];

  Widget L_food() {
    return SizedBox(
      height: 280.0,
      width: (double.infinity / 2) - 40,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: IDcontent.length,
          itemBuilder: (BuildContext context, i) {
            return Mycards().mysmalcard(
                context: context,
                F_name: Ncontent[i].toString(),
                F_cover: 'assets/Images/tacos.jpg',
                F_weigth: Wcontent[i].toString(),
                F_price: Pcontent[i].toString(),
                clickitem: () {
                  print(Ncontent[i].toString());
                  myproductevent().openproduct(
                      context: context, itemid: IDcontent[i].toString());
                });
          }),
    );
  }

  Widget L_restarent() {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: IDcontent.length,
        itemBuilder: (BuildContext context, i) {
          return Mycards().maincard(
              F_cover: Ccontent[i].toString(),
              F_name: Ncontent[i].toString(),
              F_rate: '4.5',
              F_opentime: 'Open at 10:00 AM',
              F_klmtime: '1.3 KM ~ 30 min',
              isfreedeliver: true,
              F_function: () {});
        });
  }

  Widget Gridfood() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
          controller: ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.65,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 5),
          itemCount: IDcontent.length,
          itemBuilder: (BuildContext context, i) {
            return Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 2, right: 2),
              child: Mycards().mysmalcard(
                  context: context,
                  F_name: Ncontent[i].toString(),
                  F_cover: Ccontent[i].toString(),
                  F_weigth: Wcontent[i].toString(),
                  F_price: Pcontent[i].toString(),
                  clickitem: () {
                    print(Ncontent[i].toString());
                    myproductevent().openproduct(
                        context: context, itemid: IDcontent[i].toString());
                  }),
            );
            ;
          }),
    );
  }

// list of orders
  List<String> R_name = [
    'Friendly',
    'Friendly',
    'Friendly',
    'Friendly',
    'Friendly',
    'Friendly',
    'Friendly',
    'Friendly',
    'Friendly'
  ];
  List<String> R_logo = [
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg',
    'assets/Images/tajin.jpg'
  ];
  List<String> orderstatus = [
    'Complete the order',
    'Deliverd',
    'Canceled',
    'On the Way',
    'Complete the order',
    'Deliverd',
    'Canceled',
    'On the Way',
    'Deliverd',
    'Canceled'
  ];
  List<String> btnstatut = [
    'To order',
    'Track order',
    'To order',
    'Re-order',
    'To order',
    'Track order',
    'Track order',
    'To order',
    'Re-order',
  ];

  Widget L_order() {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: R_name.length,
        itemBuilder: (context, i) {
          return Mycards().ordercard(
              context: context,
              R_name: R_name[i].toString(),
              R_logo: R_logo[i].toString(),
              orderstatus: orderstatus[i].toString(),
              btnstatut: btnstatut[i].toString());
        });
  }
}
