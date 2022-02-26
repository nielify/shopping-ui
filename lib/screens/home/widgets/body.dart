// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/products.dart';
import 'package:shopping_app_ui/screens/details/details_screen.dart';
import 'package:shopping_app_ui/screens/home/widgets/categorries.dart';
import 'package:shopping_app_ui/screens/home/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 17.0),
          child: Text(
            'Women',
            style: TextStyle(
              color: ktextColor,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: kDefaultPadding,
                mainAxisSpacing: kDefaultPadding,
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index], 
                press: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(product: products[index])
                  )
                ),
              ),
            ),
          )
        )
      ],
    );
  }
}
