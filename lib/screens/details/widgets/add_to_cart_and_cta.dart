import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/products.dart';

class AddToCardAndCTA extends StatelessWidget {
  const AddToCardAndCTA({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          SizedBox(
            width: 58,
            height: 43,
            child: OutlinedButton(
              onPressed: () {  },
              child: Icon(
                Icons.add_shopping_cart,
                color: product.color,
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                side: BorderSide(
                  width: 1,
                  color: product.color,
                ),
                padding: EdgeInsets.zero,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'BUY NOW'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                primary: Colors.white,
                backgroundColor: product.color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18), 
                ),
              ),
              
            ),
          )
        ],
      ),
    );
  }
}

