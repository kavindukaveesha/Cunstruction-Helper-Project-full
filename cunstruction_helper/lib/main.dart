import 'package:cunstruction_helper/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/widgets/Construction_types_card/cunstrctuction_types_card.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: const NavigationMenu(),
      ),
    );
  }
}
