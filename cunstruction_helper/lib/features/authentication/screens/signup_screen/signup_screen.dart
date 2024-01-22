import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/form/form_footer.dart';
import '../../../../common/widgets/form/form_header.dart';
import 'signup_form_widget.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(TSizes.appDefaultsize),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              FormHeader(
                crossAxisAlignment: CrossAxisAlignment.start,
                hSize: 0.2,
                image: TImages.signUpImg,
                title: 'title',
                subtitle: 'subtitle',
                textAlign: TextAlign.start,
              ),
              //end of header
              SizedBox(
                height: TSizes.appFormHeigh - 30,
              ),

              // form
              SignupFormWidget(),

              // End form

              SizedBox(
                height: TSizes.appFormHeigh - 20,
              ),
              //  form footer
              FormFooter(
                  signText: 'Sign in with Google',
                  spanText: 'Sign in',
                  accountText: 'Already have an Account')
              //  form footer
            ],
          ),
        ),
      ),
    );
  }
}
