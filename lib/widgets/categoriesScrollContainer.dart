import 'package:flutter/material.dart';

import 'package:burger_app_ui/widgets/categories.dart';

class CategoriesScrollContainer extends StatelessWidget {
  const CategoriesScrollContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Categories(
            Icon: Image.asset(
              "assets/icons/hamburger.png",
            ),
            title: "Burgers",
          ),
          SizedBox(
            width: 15,
          ),
          Categories(
            Icon: Image.asset(
              "assets/icons/fried-potatoes.png",
              width: 30,
            ),
            title: "Fried",
          ),
          SizedBox(
            width: 15,
          ),
          Categories(
            Icon: Image.asset(
              "assets/icons/soda.png",
              width: 30,
            ),
            title: "Drink",
          ),
          SizedBox(
            width: 15,
          ),
          Categories(
            Icon: Image.asset(
              "assets/icons/ice-cream.png",
              width: 30,
            ),
            title: "Ice Cream",
          ),
          SizedBox(
            width: 15,
          ),
          Categories(
            Icon: Image.asset(
              "assets/icons/ice-cream.png",
              width: 30,
            ),
            title: "Ice Cream",
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
