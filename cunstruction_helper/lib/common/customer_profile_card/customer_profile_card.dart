import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomerProfileCard extends StatelessWidget {
  final String customerName;
  final String image;
  final String isverified;
  final VoidCallback onHirePressed;

  const CustomerProfileCard(
      {super.key,
      required this.customerName,
      required this.image,
      required this.isverified,
      required this.onHirePressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: const Color.fromARGB(255, 242, 248, 255),
        elevation: 5,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(image),
                    radius: 50,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          customerName,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          isverified,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 39, 241, 45),
                          ),
                        ),
                        TextButton(
                            onPressed: onHirePressed,
                            child: const Text(
                              'More Details',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: TColors.appAccentColor,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
