import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:cunstruction_helper/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/form/form_footer.dart';
import '../../../../common/widgets/form/form_header.dart';
import '../../controller/registration_controller/registration_controller.dart';
import 'signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
   final RegistrationController registrationController = Get.find();

   SignUpScreen({super.key, });


  

  @override
  Widget build(BuildContext context) {
      int selectedId = registrationController.selectedId.value;
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
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header
              FormHeader(
                crossAxisAlignment: CrossAxisAlignment.start,
                hSize: 0.3,
                image: TImages.signUpImg,
                title: TTexts.signupTitle,
                subtitle: TTexts.signupSubTitle,
                textAlign: TextAlign.start,
              ),
              //end of header
              SizedBox(
                height: TSizes.appFormHeigh - 30,
              ),

              // form
              SignupFormWidget(textForId: selectedId == 1 ? 'Company ID' : 'ID'),

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
