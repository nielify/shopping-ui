// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/products.dart';
import 'package:shopping_app_ui/screens/details/widgets/add_to_cart_and_cta.dart';
import 'package:shopping_app_ui/screens/details/widgets/color_and_size.dart';
import 'package:shopping_app_ui/screens/details/widgets/counter_with_fav_btn.dart';
import 'package:shopping_app_ui/screens/details/widgets/description.dart';
import 'package:shopping_app_ui/screens/details/widgets/product_title_and_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * .35),
                  padding: EdgeInsets.only(
                    top: size.height * .15,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 5),
                      AddToCardAndCTA(product: product)
                    ],
                  ),
                ),
                ProductImageAndTitle(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

