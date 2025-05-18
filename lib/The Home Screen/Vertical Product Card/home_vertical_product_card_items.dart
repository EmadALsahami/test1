import 'package:flutter/material.dart';
import 'package:testui1/The%20Home%20Screen/Vertical%20Product%20Card/vertical_product_card.dart';


class HomeVerticalProductCardItems extends StatelessWidget {
  const HomeVerticalProductCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {"image": "Assets/promos/signUp_light.png", "title": "Zara", "description": "skadasjdjdiodjmadak", "discount": "26", "price": "2600", "oldPrice": "2600"},
      {"image": "Assets/logo/logo.jpg", "title": "Clothing", "discount": "50", "price": "1200", "oldPrice": "2600"},
      {"image": "Assets/promos/login_light.png", "title": "Accessories", "discount": "25", "price": "3999", "oldPrice": "4000"},
      {"image": "Assets/promos/notification.png", "title": "Electronics", "discount": "90", "price": "1700", "oldPrice": "5000"},
      {"image": "Assets/promos/signUp_dark.png", "title": "Beauty", "discount": "26", "price": "2600", "oldPrice": "5600"},
      {"image": "Assets/promos/login_dark.png", "title": "Home Decor", "discount": "75", "price": "8900", "oldPrice": "10000"},
    ];

    return SizedBox(
      height: 300,
      width: 400,// Adjusted height to fit the new structure
      child: HomeVerticalProductsCard(
        items: categories, // Passing the list of categories
      ),
    );
  }
}