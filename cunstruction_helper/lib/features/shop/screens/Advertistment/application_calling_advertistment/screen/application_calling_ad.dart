import 'package:cunstruction_helper/common/widgets/Advertistment_button_row/ad_buttons_row.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../expanded_widget.dart';

class ApplicationCallingAd extends StatelessWidget {
  final String postedUserFullName;
  final String userIsVerified;
  final String postedUserImage;
  final String postedDate;
  final String postedUserRate;
  final String jobTitle;
  final String salaryHeigh;
  final String salaryLow;
  final String experience;
  final String location;
  final String numberOfGigs;
  final String description;

  const ApplicationCallingAd(
      {super.key,
      required this.postedUserFullName,
      required this.userIsVerified,
      required this.postedUserImage,
      required this.postedDate,
      required this.postedUserRate,
      required this.jobTitle,
      required this.location,
      required this.numberOfGigs,
      required this.description,
      required this.salaryHeigh,
      required this.salaryLow,
      required this.experience});

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
      constraints: const BoxConstraints(minHeight: 50),
      margin: const EdgeInsets.only(top: 10, bottom: 5, left: 10, right: 10),
      // ignore: prefer_const_constructors
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(postedUserImage),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(postedUserFullName),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            userIsVerified,
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        postedDate,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 24, 24, 24),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow),
                      Text(postedUserRate),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        jobTitle,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        numberOfGigs,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                   Text.rich(TextSpan(
                      text: '',
                      style: const TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: 'Rs$salaryLow-$salaryHeigh',
                            style: const TextStyle(
                              fontSize: 20,
                                color: TColors.appAccentColor,
                                fontWeight: FontWeight.w700)),
                      ])),
                  Text.rich(TextSpan(
                      text: 'Experience:',
                      style: const TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: experience,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontWeight: FontWeight.w700)),
                      ])),
                
                  Text.rich(TextSpan(
                      text: 'Location:',
                      style: const TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: location,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 87, 86, 86),
                                fontWeight: FontWeight.w700)),
                      ])),
                  const SizedBox(
                    height: 10,
                  ),
                  ExpandedTextWidget(textLength: 150, text: description)
                ],
              ),
            ),
            const ButtonRow()
          ],
        ),
      ]),
    );
  }
}
