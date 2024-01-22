import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../utils/constants/sizes.dart';
import '../forget_password_mail/forget_password_mail.dart';
import 'forget_password_button_widget.dart';


class ForgetPasswordScreen {

  static Future<dynamic> buildshowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      context: context,
      builder: (context) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(TSizes.appDefaultsize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Make Selection',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const Text(
              'Select one of the options given below to reset your password',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            ForgetPasswordButtonWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: 'Email',
                subTitle: 'Reset vio Mail Verification',
                ontap: () {
                  Navigator.pop(context);
                  Get.to(() => ForgetPasswordMailSceen());
                }),
            const SizedBox(
              height: 30,
            ),
            ForgetPasswordButtonWidget(
                btnIcon: Icons.mobile_friendly_rounded,
                title: 'Phone No',
                subTitle: 'Reset vio Phone Verification',
                ontap: () {
                  Navigator.pop(context);
                  Get.to(() => ForgetPasswordMailSceen());
                }),
          ],
        ),
      ),
    );
  }
}
