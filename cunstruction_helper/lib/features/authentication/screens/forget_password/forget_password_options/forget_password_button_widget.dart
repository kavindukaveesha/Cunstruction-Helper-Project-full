import 'package:flutter/material.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget(
      {super.key,
      required this.btnIcon,
      required this.title,
      required this.subTitle,
      required this.ontap});
  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300),
          child: Row(
            children: [
              Icon(
                btnIcon,
                size: 60.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(subTitle, style: Theme.of(context).textTheme.bodyLarge)
                ],
              )
            ],
          ),
        ));
  }
}
