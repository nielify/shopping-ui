import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle, 
            color: Color(0xFFFF6464)
          ),
          child: const Icon(
            Icons.favorite,
            size: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({ Key? key }) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(icon: Icons.remove, onPress: () {
          if (numOfItems > 1) {
            setState(() {
              numOfItems--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 17, 
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        buildOutlinedButton(icon: Icons.add, onPress: () {
          if (numOfItems < 10) {
            setState(() {
              numOfItems++;
            });
          }
        }),
      ],
    );
  }

  SizedBox buildOutlinedButton({required IconData icon, required VoidCallback onPress}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          onPressed: onPress,
          child: Icon(
            icon,
            color: ktextColor,
          ),
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
            side: const BorderSide(
              width: 1,
              color: kTextLightColor,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
      );
  }
}


