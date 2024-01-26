import 'package:cunstruction_helper/common/widgets/Advertistment_button_row/ad_buttons_row.dart';
import 'package:flutter/material.dart';

import '../../expanded_widget.dart';

class ProjectSellingAd extends StatelessWidget {
  final String fullName;
  final String isVerified;
  final String image;
  final String postedDate;
  final String postedUserRate;
  final String projectTitle;
  final String category;
  final String location;
  final String numberOfGigs;
  final String description;

  const ProjectSellingAd(
      {super.key,
      required this.fullName,
      required this.isVerified,
      required this.image,
      required this.postedDate,
      required this.postedUserRate,
      required this.projectTitle,
      required this.category,
      required this.location,
      required this.numberOfGigs,
      required this.description});

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
                backgroundImage: NetworkImage(image),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(fullName),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            isVerified,
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
                        projectTitle,
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
                      text: 'Category:',
                      style: const TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: category,
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
