import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
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

  const ProfileCard(
      {super.key,
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
      required this.onHirePressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Card(
        color: const Color.fromARGB(255, 242, 248, 255),
        elevation: 5,
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.38,
                    child: Text(
                      fullName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'Rank: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black38, // Set your preferred color
                          ),
                        ),
                        TextSpan(
                          text: rank,
                          style: const TextStyle(
                            fontSize: 16, // Set your preferred font size
                            color: TColors
                                .appAccentColor, // Set your preferred color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(image),
                radius: 50,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star_rate,
                    color: TColors.appPrimaryColor,
                  ),
                  Text(
                    rate,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    isverified,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 39, 241, 45)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    jobTitle,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 8),
                  // RichText(
                  //   text: TextSpan(
                  //     style: DefaultTextStyle.of(context).style,
                  //     children: <TextSpan>[
                  //       const TextSpan(
                  //         text: 'Category: ',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black38, // Set your preferred color
                  //         ),
                  //       ),
                  //       TextSpan(
                  //         text: category,
                  //         style: const TextStyle(
                  //           fontSize: 16, // Set your preferred font size
                  //           color: Colors.black, // Set your preferred color
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // location
                  // RichText(
                  //   text: TextSpan(
                  //     style: DefaultTextStyle.of(context).style,
                  //     children: <TextSpan>[
                  //       const TextSpan(
                  //         text: 'Location: ',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black38, // Set your preferred color
                  //         ),
                  //       ),
                  //       TextSpan(
                  //         text: location,
                  //         style: const TextStyle(
                  //           fontSize: 16, // Set your preferred font size
                  //           color: Colors.black, // Set your preferred color
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        const TextSpan(
                          text: 'per Hour: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black38, // Set your preferred color
                          ),
                        ),
                        TextSpan(
                          text: 'Rs$rangeLow-$rangeHigh',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.w700, // Set your preferred font size
                            color: TColors
                                .appAccentColor, // Set your preferred color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 100, // Set full width
                height: 50, // Set height
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          30.0), // Change border radius to round
                    ),
                  ),
                  onPressed: onHirePressed,
                  child: const Text(
                    'Hire',
                    style: TextStyle(
                      fontSize: 12, // Increase font size
                      fontWeight: FontWeight
                          .bold, // You can adjust font weight as needed
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
