import 'package:flutter/material.dart';

import '../vertical_image_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {"image": "Assets/promos/signUp_light.png", "title": "Food & Beverage"},
      {"image": "Assets/logo/logo.jpg", "title": "Fun & Activities"},
      {"image": "Assets/promos/login_light.png", "title": "Retails Services"},
    ];

    return SizedBox(
      height: 200,
      width: 400,// Adjusted height to fit the new structure
      child: VerticalImageText(
        items: categories, // Passing the list of categories
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../vertical_image_text.dart';
//
// class HomeCategories extends StatelessWidget {
//   const HomeCategories({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 150,
//       child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: 6,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (_, index)
//           {
//             return VerticalImageText(
//               image: "Assets/logo/logo.jpg",
//               title: "Shoes Category",
//               onTap: (){},);
//           }
//       ),
//     );
//   }
// }
