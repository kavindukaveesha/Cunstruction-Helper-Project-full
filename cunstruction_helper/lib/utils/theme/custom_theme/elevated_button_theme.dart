import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: TColors.appSecondaryColor,
        side: const BorderSide(color: TColors.appSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        side: const BorderSide(color: TColors.appSecondaryColor),
        padding: const EdgeInsets.symmetric(vertical: TSizes.buttonHeight)),
  );
}
