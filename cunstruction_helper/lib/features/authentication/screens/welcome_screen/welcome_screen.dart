import 'package:cunstruction_helper/features/authentication/screens/select_UserRole_screen/select_user_role_screen.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:cunstruction_helper/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../../controller/registration_controller/registration_controller.dart';
import '../login_screen/login_screen.dart';
import '../signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final RegistrationController registrationController =
      RegistrationController();
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var isDarkMood = brightness == Brightness.dark;
    var height = mediaQuery.size.height;
    return Scaffold(
      backgroundColor: isDarkMood ? TColors.appSecondaryColor : Colors.white,
      body: Container(
        padding: const EdgeInsets.all(TSizes.appDefaultsize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage(TImages.wlcImg1),
              height: height * .5,
            ),
            Column(
              children: [
                Text(
                  TTexts.wlcTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Text(
                    TTexts.wlcSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    child: Text(
                      TTexts.applogin.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(
                        SelectUserRoleScreen(),
                      );
                    },
                    child: Text(
                      TTexts.appRegister.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
