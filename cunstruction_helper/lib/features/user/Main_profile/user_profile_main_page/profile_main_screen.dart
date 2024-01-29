import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_body_home.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.appPrimaryColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          const ProfileBody(),
        ],
      ),
    );
  }
}
