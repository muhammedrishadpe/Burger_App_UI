import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

import 'searchBarContainer.dart';
import 'package:burger_app_ui/models/productModel.dart';

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(
            child: Text("${data.error}"),
          );
        } else if (data.hasData) {
          var items = data.data as List<ProductModel>;
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                child: Container(
                    width: 340,
                    height: 100,
                    padding: EdgeInsets.all(13),
                    decoration: decoration,
                    // color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          items[index].imgUrl.toString(),
                          width: 70,
                          height: 70,
                        ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].name.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              items[index].subName.toString(),
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),

                              // textAlign: TextAlign.right,
                            ),
                            Text(
                              items[index].price.toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Color.fromARGB(255, 233, 197, 65)
                              .withOpacity(0.6),
                          size: 30,
                        )
                      ],
                    )),
              );
              ;
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<ProductModel>> ReadJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('lib/dummy.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => ProductModel.fromJson(e)).toList();
  }
}
