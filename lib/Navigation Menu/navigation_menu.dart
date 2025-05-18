import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:testui1/The%20Home%20Screen/home_screen.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
            () =>  NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: Colors.white,
          indicatorColor: Colors.black.withOpacity(0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home,color: Colors.orange,), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.user,color: Colors.orange,), label: "Profile"),
            NavigationDestination(icon: Icon(Iconsax.heart,color: Colors.orange,), label: "Favorite"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [HomeScreen(), Container(color: Colors.blue,), Container(color: Colors.yellow,),];
}