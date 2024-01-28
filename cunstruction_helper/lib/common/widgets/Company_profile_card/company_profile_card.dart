import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CompanyProfileCard extends StatelessWidget {
  final String companyName;
  final String rank;
  final String image;
  final String rate;
  final String isverified;
  final String cunstructionType;
  final String experience;
  final VoidCallback onHirePressed;

  const CompanyProfileCard(
      {super.key,
      required this.companyName,
      required this.rank,
      required this.image,
      required this.rate,
      required this.isverified,
      required this.cunstructionType,
      required this.experience,
      required this.onHirePressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
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
                          companyName,
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cunstructionType,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(221, 29, 28, 28),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Experience: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color:
                                    Colors.black38, // Set your preferred color
                              ),
                            ),
                            TextSpan(
                              text: '$experience years',
                              style: const TextStyle(
                                fontSize: 14, // Set your preferred font size
                                color: Colors.black, // Set your preferred color
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'per Hour: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              ),
                            ),
                            TextSpan(
                              text: '20 projects Done',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: TColors.appAccentColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: onHirePressed,
                  child: const Text(
                    'HIRE US',
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
        ),
      ),
    );
  }
}
