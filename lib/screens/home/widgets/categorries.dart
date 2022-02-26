import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';

class Categories extends StatefulWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  final List<String> categories = ['Hand Bag', 'Jewelry', 'Footwear', 'Dresses', 'Headgears'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color:  selectedIndex == index ? ktextColor : kTextLightColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                height: 2,
                width: 30,
                color: selectedIndex == index ? ktextColor : Colors.transparent,
              )
            ],
          ),
        ),
      );
  }
}