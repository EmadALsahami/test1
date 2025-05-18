import 'package:flutter/material.dart';
import 'package:testui1/The%20Home%20Screen/promo_slider.dart';

import '../AppBars/home_appBar.dart';
import 'Containers/search_bar_container.dart';
import '../section_heading.dart';
import 'Containers/primaty_header_container.dart';
import 'Vertical Product Card/home_vertical_product_card_items.dart';
import 'home_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Expanded(
                child: Column(
                  children: [
                    HomeAppBar(),
                    SizedBox(height: 15,),
                    SearchContainer(
                      text: "Search In The Store",),
                    SizedBox(height: 10,),
                    PromoSlider(
                      banners:
                        [
                          "Assets/logo/logo.jpg",
                      "Assets/promos/signUp_light.png",
                      "Assets/promos/login_dark.png",
                      "Assets/promos/notification.png" ,
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  HomeCategories(),
                  SizedBox(height: 16,),
                  SectionHeading(
                    title: 'Hot Deals',
                    showActionButton: true,
                    onPressed: (){},
                    textColor: Colors.black,
                  ),
                  HomeVerticalProductCardItems(),
                  SizedBox(height: 16,),
                  SectionHeading(
                    title: 'Recent',
                    showActionButton: true,
                    onPressed: (){},
                    textColor: Colors.black,
                  ),
                  HomeVerticalProductCardItems(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
