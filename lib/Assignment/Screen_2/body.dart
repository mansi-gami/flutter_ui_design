import 'package:flutter/material.dart';
import 'package:screen_two/Assignment/Screen_2/constants.dart';
import 'package:screen_two/Assignment/Screen_2/product.dart';
import 'package:screen_two/Assignment/Screen_2/product_card.dart';
import 'package:screen_two/Assignment/Screen_2/products_screen.dart';
import 'package:screen_two/Assignment/Screen_2/search_box.dart';
import 'category_list.dart';

class Body extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
    bottom: false,
      child: Column(
      children: <Widget>[
        search_box(),
        category_list(),
        SizedBox(height: kDefaultPadding / 2),
        Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  margin : const EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: product.length,
                  itemBuilder: (context, index) => Product_card(
                    itemIndex: index,
                    product: product[index],
                   ),
                ),



              ],
            ),
        ),
      ],
    ),
    );
  }
}
