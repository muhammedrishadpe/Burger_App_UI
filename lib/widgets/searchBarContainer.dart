import 'package:flutter/material.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 250,
            decoration: decoration,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                hintText: "Search Burgers Menu",
              ),
            ),
          ),
          Container(
            decoration: decoration,
            child: IconButton(
              onPressed: () {
                //filter Settings
              },
              icon: Image.asset(
                "assets/icons/settings.png",
                width: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

BoxDecoration decoration = BoxDecoration(
  color: Colors.white.withOpacity(0.4),
  borderRadius: BorderRadius.all(
    Radius.circular(15.0),
  ),
);
