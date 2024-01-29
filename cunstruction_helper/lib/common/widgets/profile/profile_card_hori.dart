import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileCardHori extends StatelessWidget {
  final String fullName;
  final String rank;
  final String image;
  final String rate;
  final String isverified;
  final String jobTitle;
  final String category;
  final String location;
  final int rangeLow;
  final int rangeHigh;

  final VoidCallback onHirePressed;

  ProfileCardHori({
    Key? key,
    required this.fullName,
    required this.rank,
    required this.image,
    required this.rate,
    required this.isverified,
    required this.jobTitle,
    required this.category,
    required this.location,
    required this.rangeLow,
    required this.rangeHigh,
    required this.onHirePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
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
                          fullName,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
                                  color: TColors.appAccentColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star_rate,
                              color: TColors.appPrimaryColor,
                            ),
                            Text(
                              rate,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              isverified,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 39, 241, 45),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10), // Reduced height
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobTitle,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'per Hour: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              ),
                            ),
                            TextSpan(
                              text: 'Rs$rangeLow-$rangeHigh',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: TColors.appAccentColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: onHirePressed,
                      child: const Text(
                        'Hire',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
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