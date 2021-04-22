import 'package:flutter/material.dart';
import 'package:food_app/src/commons.dart';
import 'package:food_app/src/models/products.dart';
import 'package:food_app/src/widgets/CustomText.dart';

List<Product> productsList = [
  Product(
      name: "Cereals",
      price: 5.99,
      image: "fo2.jpg",
      rating: 4.2,
      vendor: "GoodFoods",
      wishList: true),
  Product(
      name: "fast food",
      price: 5.99,
      image: "fastfood.jpg",
      rating: 4.2,
      vendor: "GoodFoods",
      wishList: true),
  Product(
      name: "Cereals",
      price: 5.99,
      image: "sheklatibs.png",
      rating: 4.2,
      vendor: "GoodFoods",
      wishList: true),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(12, 14, 16, 12),
            child: Container(
              height: 220,
              width: 200,
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: grey[300]!, offset: Offset(15, 5), blurRadius: 4),
              ]),
              child: Column(
                ///big pic scroll horizontal part
                children: [
                  //image here
                  Image.asset(
                    "images/${productsList[index].image}",
                    height: 140.0,
                    width: 140,
                  ),

                  ///name and wishlist part
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(text: productsList[index].name),
                        ),

                        ///wishlist part
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    color: grey[300]!,
                                    blurRadius: 4,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productsList[index].wishList
                                  ? Icon(
                                      Icons.favorite,
                                      size: 16,
                                      color: red,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 16,
                                      color: red,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                      ]),

                  ///rating and price  part
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ///rate part like 4.2
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CustomText(
                              text: " ${productsList[index].rating}",
                              color: grey,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),

                          ///rate part star icons
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: grey,
                            size: 16,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CustomText(
                          weight: FontWeight.bold,
                          text: "\$ ${productsList[index].price}",
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
