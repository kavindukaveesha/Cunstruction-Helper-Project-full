import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/controller/get_all_projects.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/model/project_selling_model.dart';
import 'package:cunstruction_helper/features/shop/screens/Advertistment/Project_selling_advertistment/screen/project-selling_Advertistment_widget.dart';
import 'package:flutter/material.dart';

class ProjectSellingList extends StatelessWidget {
  ProjectSellingList({super.key});
  final ProjectSellingController projectSellingController =
      ProjectSellingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 10,
          ),
          child: FutureBuilder<List<ProjectSellingModel>>(
              future: projectSellingController.fetchProjects(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Return a loading indicator or placeholder widget
                  return const Text('');
                } else if (snapshot.hasError) {
                  // Handle errors
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Display your GridView using the fetched data
                  final List<ProjectSellingModel> projectSellingAds =
                      snapshot.data!;
                  return Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        const Text('All'),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('${projectSellingAds.length}')
                      ],
                    ),
                  );
                }
              }),
        ),
        FutureBuilder<List<ProjectSellingModel>>(
          future: projectSellingController.fetchProjects(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final List<ProjectSellingModel> projectSellingAds =
                  snapshot.data!;

              return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: projectSellingAds.length,
                itemBuilder: (context, index) {
                  var projectSellingAd = projectSellingAds[index];
                  DateTime apiDateTime =
                      DateTime.parse(projectSellingAd.postedDate);
                  String formattedDate =
                      "${apiDateTime.year}/${apiDateTime.month}/${apiDateTime.day}";

                  return ProjectSellingAd(
                      postedUserFullName:
                          '${projectSellingAd.firstName} ${projectSellingAd.firstName}',
                      userIsVerified:projectSellingAd.isVerified,
                      postedUserImage: projectSellingAd.imageAvatar,
                      postedDate: formattedDate,
                      postedUserRate: projectSellingAd.postedUserRate,
                      projectTitle:projectSellingAd.projectTitle,
                      cunstructionCategory: projectSellingAd.category,
                      location: projectSellingAd.location,
                      numberOfGigs:projectSellingAd.numberOfGigs,
                      description: projectSellingAd.description);
                },
              );
            }
          },
        )
      ],
    );
  }
}
