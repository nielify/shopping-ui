import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/products.dart';
import 'package:shopping_app_ui/screens/details/widgets/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.white,
          ),
          const SizedBox(width: kDefaultPadding / 2,),
        ],
      ),
      body: Body(product: product),
    );
  }
}