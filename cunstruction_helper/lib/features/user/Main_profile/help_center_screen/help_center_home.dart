import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/colors.dart';

class HelpCenterHome extends StatelessWidget {
  const HelpCenterHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: TColors.appPrimaryColor,
        title: const Text('Help Center'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25.0),
            Text(
              'Helping Details',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Our construction field app offers quick problem-solving for '
              'industry professionals. Users can easily contact us via '
              'WhatsApp and email, receiving prompt solutions to their '
              'construction-related challenges, enhancing efficiency and '
              'support within the construction community.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.chat,
                    size: 100,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Join Us Via WhatsApp',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.contact_mail,
                    size: 100,
                    color: Colors.red,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Join Us Via Email',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
