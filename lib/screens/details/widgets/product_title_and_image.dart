import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/products.dart';

class ProductImageAndTitle extends StatelessWidget {
  const ProductImageAndTitle({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Aristrocratic Hand Bag',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(text: 'Price\n'),
                    TextSpan(
                      text: '\$${product.price}',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: product.id,
                  child: Image.asset(
                    'assets/${product.image}',
                    fit: BoxFit.none,
                  ),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}