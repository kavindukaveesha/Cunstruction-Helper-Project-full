import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class FormFooter extends StatelessWidget {
  const FormFooter(
      {super.key,
      required this.signText,
      required this.spanText,
      required this.accountText});
  final String signText;
  final String spanText;
  final String accountText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('OR'),
        const SizedBox(
          height: TSizes.appFormHeigh - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(TImages.google),
                width: 20,
              ),
              label: Text(signText)),
        ),
        const SizedBox(
          height: TSizes.appFormHeigh - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
              text: accountText,
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: spanText,
                  style: const TextStyle(color: Colors.blue),
                )
              ])),
        )
      ],
    );
  }
}
