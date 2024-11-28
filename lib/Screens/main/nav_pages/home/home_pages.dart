import 'package:flutter/material.dart';
import 'package:food_delivery/theme/style.dart';

import 'home_category/food/food_main_page.dart';
import 'home_category/grocery_and_fruit/grocery_and_fruit_main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
      child: Column(
        children: [
          _homeCategoryItemWidget(
            context,
            title: "Grocrery & Fruits",
            description:
                "Order fresh vetgatables & fruits antytime and anywhere",
            image: "assets/home_image_1.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GroceryAndFruitMainPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 20,),
          _homeCategoryItemWidget(
            context,
            title: "Grocrery & Fruits",
            description:
                "Order from your favorite restaurant restaurants and home chefs.",
            image: "assets/home_image_2.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FoodMainPage(),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }

  _homeCategoryItemWidget(BuildContext context,
      {required String title,
      required String description,
      required String image,
      VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.20, //! 20 % of screen
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 1),
                spreadRadius: 1.5,
                blurRadius: 5.5,
                color: Colors.grey[350]!,
              )
            ]),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
              Image.asset(image),
            ],
          ),
        ),
      ),
    );
  }
}
