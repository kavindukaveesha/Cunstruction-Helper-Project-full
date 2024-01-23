import 'package:cunstruction_helper/features/shop/screens/home/widgets/Main_page/main_page.dart';
import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:cunstruction_helper/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../navigation_menu.dart';
import '../forget_password/forget_password_options/forget_password_model_bottum_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: TSizes.appFormHeigh - 10),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.person_outline_outlined,
            ),
            border: OutlineInputBorder(),
            labelText: 'Email',
            hintText: 'Email',
          )),
          const SizedBox(height: TSizes.appFormHeigh - 20),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: 'Password',
                hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye_sharp)),
          ),
          const SizedBox(height: TSizes.appFormHeigh - 20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildshowModalBottomSheet(context);
                },
                child: const Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.blue),
                )),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text(TTexts.applogin),
              onPressed: () {
                Get.to(());
              },
            ),
          )
        ],
      )),
    );
  }
}
