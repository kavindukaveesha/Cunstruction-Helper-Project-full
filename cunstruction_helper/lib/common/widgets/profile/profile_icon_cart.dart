import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProfileCart extends StatelessWidget {
  const TProfileCart({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.person, color: Colors.black)),
      ],
    );
  }
}
