import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/controller/get_all_projects.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/model/project_selling_model.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/screen/project-selling_Advertistment_widget.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/application_calling_advertistment/controller/get_all_application_calling_ads.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/application_calling_advertistment/model/application_calling_model.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/application_calling_advertistment/screen/application_calling_ad.dart';
import 'package:flutter/material.dart';

class ApplicationCallingAdsList extends StatelessWidget {
  ApplicationCallingAdsList({super.key});
  final ApplicationCallingController applicationCallingController =
      ApplicationCallingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 10,
          ),
          child: FutureBuilder<List<ApplicationCallingModel>>(
              future: applicationCallingController.fetchApplicationSellingAds(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Return a loading indicator or placeholder widget
                  return const Text('');
                } else if (snapshot.hasError) {
                  // Handle errors
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Display your GridView using the fetched data
                  final List<ApplicationCallingModel> applicationCallingAds =
                      snapshot.data!;
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        const Text('All'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('${applicationCallingAds.length}')
                      ],
                    ),
                  );
                }
              }),
        ),
        FutureBuilder<List<ApplicationCallingModel>>(
          future: applicationCallingController.fetchApplicationSellingAds(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final List<ApplicationCallingModel> applicationCallingAds =
                  snapshot.data!;

              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: applicationCallingAds.length,
                itemBuilder: (context, index) {
                  var applicationCallingAd = applicationCallingAds[index];
                  DateTime apiDateTime =
                      DateTime.parse(applicationCallingAd.postedDate);
                  String formattedDate =
                      "${apiDateTime.year}/${apiDateTime.month}/${apiDateTime.day}";

                  return ApplicationCallingAd(
                      postedUserFullName:
                          '${applicationCallingAd.firstName} ${applicationCallingAd.lastName}',
                      userIsVerified: applicationCallingAd.isVerified,
                      postedUserImage: applicationCallingAd.imageAvatar,
                      postedDate: formattedDate,
                      postedUserRate: applicationCallingAd.postedUserRate,
                      jobTitle: applicationCallingAd.jobTitle,
                      location: applicationCallingAd.location,
                      numberOfGigs: applicationCallingAd.numberOfGigs,
                      description: applicationCallingAd.description,
                      salaryHeigh: applicationCallingAd.salaryHeigh,
                      salaryLow: applicationCallingAd.salaryLow,
                      experience: applicationCallingAd.experience);
                },
              );
            }
          },
        )
      ],
    );
  }
}
