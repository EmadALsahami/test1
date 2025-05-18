import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testui1/The%20Home%20Screen/Home%20Controller/home_controller.dart';
import 'package:testui1/The%20Home%20Screen/promo_rounded_image.dart';


import 'Containers/circular_container.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => PromoRoundedImage(width: MediaQuery.of(context).size.width, imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInOut,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        SizedBox(height: 3),
        Center(
          child: Obx(
                () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i ? Colors.white : Colors.deepOrange,
                    margin: EdgeInsets.only(right: 10),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:the_interfaces/The%20Home%20Screen/Home%20Controller/home_controller.dart';
// import 'package:the_interfaces/The%20Home%20Screen/promo_rounded_image.dart';
//
// import 'Containers/circular_container.dart';
//
// class PromoSlider extends StatelessWidget {
//   const PromoSlider({
//     super.key,
//     required this.banners,
//   });
//
//   final List<String> banners;
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(HomeController());
//     return Column(
//       children: [
//         CarouselSlider(
//           items: banners.map((url) => PromoRoundedImage(width: MediaQuery.of(context).size.width , imageUrl: url)).toList(),
//           options: CarouselOptions(
//             viewportFraction: 1,
//             onPageChanged: (index, _) => controller.updatePageIndicator(index)
//           ),
//         ),
//         SizedBox(height: 3,),
//         Center(
//           child: Obx(
//             () => Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 for(int i = 0; i < banners.length; i++)
//                   CircularContainer(
//                     width: 20,
//                     height: 4,
//                     backgroundColor: controller.carouselCurrentIndex.value == i ? Colors.white : Colors.grey,
//                     margin: EdgeInsets.only(right: 10),
//                   )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
