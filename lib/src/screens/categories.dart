import 'package:flutter/material.dart';
import 'package:food_app/src/models/category.dart';
import 'package:food_app/src/widgets/CustomText.dart';

import '../commons.dart';

List<Category> categoriesList = [
  Category(name: "salad", image: "fo3.jpeg"),
  Category(name: "Firfer", image: "firfer.jpg"),
  Category(name: "Shekla Tibs", image: "sheklatibs.png"),
  Category(name: "Bear", image: "fastfood.jpg"),
  Category(name: "Asa ", image: "fo2.jpg"),
  Category(name: "black chekolete ", image: "fo2.jpg"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //barpart
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: red[50]!,
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //upper list
                CustomText(text: categoriesList[index].name, color: black),

                ///container begin

                ///column end
              ],
            ),
          );
        },
      ),
    );
  }
}
