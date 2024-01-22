import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../common/widgets/form/form_header.dart';
import '../../../../../utils/constants/sizes.dart';
import '../forget_password_opt/opt_screen.dart';


class ForgetPasswordMailSceen extends StatelessWidget {
  ForgetPasswordMailSceen({super.key});
  @override
  // TODO: implement key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all( TSizes.appDefaultsize ),
          child: Column(
            children: [
              const FormHeader(
                crossAxisAlignment: CrossAxisAlignment.center,
                hSize: 0.4,
                image: TImages.resetPasswordIllustration,
                title: 'Forget Password',
                subtitle:
                    'Select one of the opotions given below to reset your password',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.appDefaultsize,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text('E-Mail'),
                        prefixIcon: Icon(Icons.mail_outline_rounded)),
                  ),
                  const SizedBox(
                    height: TSizes.appDefaultsize - 10,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Get.to(() => const OTPScreen());
                          },
                          child: const Text('Next')))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
