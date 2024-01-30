import 'package:cunstruction_helper/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.hSize,
      required this.crossAxisAlignment,
      required this.textAlign});
  final String image, title, subtitle;
  final double hSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          height: height * 0.3,
        ),
        SizedBox(height: height * 0.025),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}
