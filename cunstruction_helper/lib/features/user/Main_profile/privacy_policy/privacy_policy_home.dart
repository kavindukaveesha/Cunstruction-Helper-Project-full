import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/colors.dart';
import 'privacy_policy_container.dart';

class PrivacyAndPolicyHome extends StatelessWidget {
  const PrivacyAndPolicyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: TColors.appPrimaryColor,
        title: const Text('Privacy Conditions'),
      ),
      body: const Stack(
        children: [PrivacyPolicyContainer()],
      ),
    );
  }
}
