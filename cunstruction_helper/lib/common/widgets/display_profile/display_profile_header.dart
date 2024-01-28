import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class DisplayProfileHeader extends StatelessWidget {
  final String userName;
  final String image;
  final String jobCategory;
  final String rank;
  final String rate;
  final bool verified;
  const DisplayProfileHeader(
      {super.key,
      required this.userName,
      required this.image,
      required this.jobCategory,
      required this.rank,
      required this.rate,
      required this.verified});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          userName,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            padding: const EdgeInsets.all(
                2.0), // Adjust the padding for the border width
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Background color of the circle
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              ),
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(image),
            ),
          ),
        ),

        Text(
          jobCategory,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                const TextSpan(
                  text: 'Rank: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
                TextSpan(
                  text: rank.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: TColors.appAccentColor,
                  ),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.star_rate,
              color: TColors.appPrimaryColor,
            ),
            Text(
              rate.toString(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              verified ? 'verified' : '',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 39, 241, 45),
              ),
            ),
          ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: OutlinedButton(
                      child: Text(
                        'Rate Me'.toUpperCase(),
                      
                      ),
                      onPressed: () {})),
              SizedBox(width: MediaQuery.of(context).size.width * .03),
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Contact Me'.toUpperCase())),
              ),
            ],
          ),
          const Divider(
            // Add this divider for the black line
            color: Colors.black,
            thickness: 1,
            height: 20,
            indent: 10,
            endIndent: 10,
          ),
        ]),
        // personal information
      ],
    );
  }
}
