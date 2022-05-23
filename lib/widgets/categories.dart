import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({required this.Icon, required this.title});

  Image Icon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67,
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: IconButton(
              onPressed: () {
                //itemSelectButton
              },
              icon: Icon,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
