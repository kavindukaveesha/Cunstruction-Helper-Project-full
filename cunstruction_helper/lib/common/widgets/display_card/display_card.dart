import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class DisplayCard extends StatelessWidget {
  final String name;
  final String image;
  final String rate;
  final String rank;

  const DisplayCard({
    super.key,
    required this.name,
    required this.image,
    required this.rate,
    required this.rank,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 242, 248, 255),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color.fromARGB(255, 115, 115, 115),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: const BoxConstraints(minHeight: 20),
      margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(image),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'More Details',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              // Assuming TColors is defined somewhere
                              color: TColors.appAccentColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(rate),
                        const Icon(
                          Icons.star_half_outlined,
                          color: Color.fromARGB(255, 193, 170, 101),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'Rank: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black38,
                            ),
                          ),
                          TextSpan(
                            text: rank,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
