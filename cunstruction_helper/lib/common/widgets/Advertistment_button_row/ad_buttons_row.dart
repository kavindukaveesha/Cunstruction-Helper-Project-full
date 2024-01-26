import 'package:flutter/material.dart';

import 'ad_button_model.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ModelButton(icon: Icons.chat, label: 'chat', onPressed: () {}),
          ModelButton(
              icon: Icons.add_task, label: 'Add Your Gig', onPressed: () {}),
          ModelButton(
              icon: Icons.save_sharp, label: 'Save Post', onPressed: () {}),
        ],
      ),
    );
  }
}
