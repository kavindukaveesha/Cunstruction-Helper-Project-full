import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shop/screens/company/screen/user_profile/company_user_profile_display.dart';
import '../filter_location_screen/filter_list_home.dart';
import '../help_center_screen/help_center_home.dart';
import '../payment_card_remove_and_add/payment_list.dart';
import '../privacy_policy/privacy_policy_home.dart';
import 'profile_menu.dart';
import 'profile_picture.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePicture(),
        const SizedBox(height: 40),
        ProfileMenu(
            text: 'My Account Details',
            onPress: () {
              Get.to(() => const CompanyUserProfileDisplay());
            },
            iconName: Icons.account_circle_outlined),
        ProfileMenu(
            text: 'Payment Methods',
            onPress: () {
              Get.to(() => PaymentCardList());
            },
            iconName: Icons.credit_card_off_outlined),
        ProfileMenu(
            text: 'Help  Center',
            onPress: () {
              Get.to(() => const HelpCenterHome());
            },
            iconName: Icons.help_center_outlined),
        ProfileMenu(
            text: 'Privacy Policy',
            onPress: () {
              Get.to(() => const PrivacyAndPolicyHome());
            },
            iconName: Icons.privacy_tip_outlined),
        ProfileMenu(
            text: 'Text Filter',
            onPress: () {
              Get.to(() => const FilterButtonWindow());
            },
            iconName: Icons.filter_alt_off_outlined),
        ProfileMenu(
          text: "Log Out",
          iconName: Icons.logout_outlined,
          onPress: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Log Out"),
                    content: const Text("Are you sure you want to log out?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Yes"),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("NO"))
                    ],
                  );
                });
          },
        ),
      ],
    );
  }
}
