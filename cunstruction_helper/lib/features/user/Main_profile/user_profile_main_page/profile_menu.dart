import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.onPress,
    required this.iconName,
  }) : super(key: key);

  final IconData iconName;
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var isDarkMood = brightness == Brightness.dark;
    var height = mediaQuery.size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), // Specify the border radius
          border: Border.all(
            color: isDarkMood
                ? TColors.appPrimaryColor
                : TColors.appAccentColor, // Specify the border color
            width: 1, // Specify the border width
          ),
        ),
        child: InkWell(
          // InkWell for touch effect
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(iconName),
                SizedBox(width: mediaQuery.size.width * 0.02),
                Expanded(
                  child: Text(text,
                      style: Theme.of(context).textTheme.headlineSmall),
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
