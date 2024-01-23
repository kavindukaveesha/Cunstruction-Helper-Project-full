import 'package:cunstruction_helper/features/shop/screens/home/widgets/Main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/myPosts/my_posts.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.notification), label: 'Notification'),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: 'Message'),
            //NavigationDestination(icon: Icon(Iconsax.), label: 'Message'),
            NavigationDestination(icon: Icon(Iconsax.add), label: 'Post'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage1(),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
    const MyPosts(),
  ];
}
