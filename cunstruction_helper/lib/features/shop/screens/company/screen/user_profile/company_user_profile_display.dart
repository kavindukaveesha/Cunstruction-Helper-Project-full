import 'package:cunstruction_helper/features/shop/screens/company/screen/user_profile/user_profile_company.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../utils/constants/colors.dart';

class CompanyUserProfileDisplay extends StatelessWidget {
  const CompanyUserProfileDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'User Details',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          backgroundColor: TColors.appPrimaryColor,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios))),
      body: const SingleChildScrollView(
        child: CompanyUserProfileData(),
      ),
    );
  }
}
