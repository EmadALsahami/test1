import 'package:flutter/material.dart';
import 'package:testui1/cardoffer/card_offer.dart';
import 'Navigation Menu/navigation_menu.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp2(),
    );
  }
}
