import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/commons.dart';
import 'package:food_app/src/screens/categories.dart';
import 'package:food_app/src/screens/featured_products.dart';
import 'package:food_app/src/widgets/CustomText.dart';
import 'package:food_app/src/widgets/bottom_navigation.dart';
import 'package:food_app/src/widgets/small_floating_button.dart';

import '../commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            ///upper text and notification icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "What Would you like to eat?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            ///this container for search area
            Container(
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                  color: grey[300]!,
                  offset: Offset(1, 1),
                  blurRadius: 4,
                )
              ]),
              child: ListTile(
                leading: Icon(Icons.search, color: red),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Find Food and restaurant",
                      border: InputBorder.none),
                ),
                trailing: Icon(Icons.filter_list, color: red),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            ///list of categories scroolable to horizontal
            Categories(),

            ///featured grid is here
            ///text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                size: 20,
                color: grey,
              ),
            ),

            ///feature body
            Featured(),

            ///popular product section
            ///txt
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                size: 20,
                color: grey,
              ),
            ),

            ///popular body goes here
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/fo1.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.star,
                                      color: Colors.yellow[900], size: 20),
                                ),
                                Text('4.5'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 8, 13.0),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Vegitables \n",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: white)),
                                TextSpan(
                                    text: "by ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: white)),
                                TextSpan(
                                    text: "Pizza hut",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: white)),
                              ], style: TextStyle(color: black)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "\$12.99 \n",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: white)),
                                ],
                                style: TextStyle(color: black),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///popular section end here
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 61,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///bottom bar section call bottomNavIcon class
            BottomNavIcon(icon: Icons.home_outlined, name: "Home"),
            BottomNavIcon(icon: Icons.near_me_outlined, name: "Near by"),
            BottomNavIcon(icon: Icons.shopping_bag_outlined, name: "Cart"),
            BottomNavIcon(icon: Icons.person_outline, name: "Account"),
          ],
        ),
      ),
    );
  }
}
