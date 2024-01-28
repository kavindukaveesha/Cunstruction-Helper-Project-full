import 'package:flutter/material.dart';

class ConstructionTypeModel {}

class CunstrctionTypeCard extends StatelessWidget {
  final String avatarImage;
  final String companyText;
  final String numOfCompanies;
  final Color bgColor1;
  final Color bgColor2;

  const CunstrctionTypeCard(
      {super.key,
      required this.avatarImage,
      required this.companyText,
      required this.numOfCompanies,
      required this.bgColor1,
      required this.bgColor2});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var isDarkMood = brightness == Brightness.dark;
    return Card(
        color: isDarkMood ? bgColor2 : bgColor1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.2,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                companyText,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatarImage),
                    radius: 35,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        numOfCompanies,
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const Text(
                        "Companies",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
