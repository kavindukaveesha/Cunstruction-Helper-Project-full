import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCard extends StatelessWidget {
  final String fullName;
  final int ratelow;
  final int rateHeigh;
  final String title;
  final String category;
  final String location;
  final VoidCallback onHirePressed;
  final String image;

  const ProfileCard({
    super.key,
    required this.fullName,
    required this.title,
    required this.category,
    required this.onHirePressed,
    required this.image,
    required this.location,
    required this.ratelow,
    required this.rateHeigh,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 245, 246, 249),
      elevation: 5,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              fullName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_rate,
                  color: TColors.appPrimaryColor,
                ),
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'verified',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.green),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Category: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38, // Set your preferred color
                        ),
                      ),
                      TextSpan(
                        text: category,
                        style: const TextStyle(
                          fontSize: 16, // Set your preferred font size
                          color: Colors.black, // Set your preferred color
                        ),
                      ),
                    ],
                  ),
                ),

                // location
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Location: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black38, // Set your preferred color
                        ),
                      ),
                      TextSpan(
                        text: location,
                        style: const TextStyle(
                          fontSize: 16, // Set your preferred font size
                          color: Colors.black, // Set your preferred color
                        ),
                      ),
                    ],
                  ),
                ),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Rate: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: TColors
                              .appAccentColor, // Set your preferred color
                        ),
                      ),
                      TextSpan(
                        text: 'Rs:$ratelow-$rateHeigh',
                        style: const TextStyle(
                          fontSize: 16, // Set your preferred font size
                          color: Colors.black, // Set your preferred color
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
                    fontWeight:
                        FontWeight.bold, // You can adjust font weight as needed
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
