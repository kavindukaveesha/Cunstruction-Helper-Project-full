import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widgets/form/form_footer.dart';
import '../../../../common/widgets/form/form_header.dart';
import 'login-form_wideget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(TSizes.appDefaultsize),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeader(
                crossAxisAlignment: CrossAxisAlignment.start,
                hSize: 0.2,
                image: TImages.loginImg,
                title: 'Login title',
                subtitle: 'Login subtitle',
                textAlign: TextAlign.start,
              ),
              LoginForm(),
              FormFooter(
                  signText: 'Sign in with Google',
                  spanText: 'Sign up',
                  accountText: 'Do not have an Account')
            ],
          ),
        ),
      ),
    );
  }
}
