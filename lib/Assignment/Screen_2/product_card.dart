import 'package:flutter/material.dart';
import 'package:screen_two/Assignment/Screen_2/constants.dart';
import 'package:screen_two/Assignment/Screen_2/product.dart';
import 'package:flutter/src/foundation/key.dart';

class Product_card extends StatelessWidget {
  const Product_card({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);

  final int itemIndex;
  final Product product;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kSecondaryColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin : EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),

          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(product.images,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child:
                    Text(product.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                    ),

                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "\$599",
                        style: Theme.of(context).textTheme.button
                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
