import 'dart:ui';

import 'package:burger_app_ui/widgets/listViewBuilder.dart';
import 'package:flutter/material.dart';

import '../widgets/iteamSelecter.dart';

import '../widgets/searchBarContainer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 164, 164).withOpacity(0.9),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: SafeArea(
          child: Container(
            width: double.infinity,
            // height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1554189097-ffe88e998a2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjR8fHNreWJsdWUlMjAlMjBwaW5rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    // Searchbar
                    SearchBarContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    //ItemsSelect
                    ItemSelecter(),
                    //Populer Menu
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 20),
                      child: Text(
                        "Populer Menu",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListViewBuilder(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
