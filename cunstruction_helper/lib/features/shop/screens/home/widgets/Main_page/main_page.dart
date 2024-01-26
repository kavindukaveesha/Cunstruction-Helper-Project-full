import 'package:cunstruction_helper/features/shop/screens/home/widgets/tab_bar_pages/tab_bar_company.dart';
import 'package:cunstruction_helper/features/shop/screens/home/widgets/tab_bar_pages/tab_bar_employee.dart';
import 'package:cunstruction_helper/features/shop/screens/home/widgets/tab_bar_pages/tab_bar_projects.dart';
import 'package:cunstruction_helper/features/shop/screens/home/widgets/tab_bar_pages/tabbar_home.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../utils/constants/image_strings.dart';

import '../../../../../../utils/constants/text_strings.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.appPrimaryColor,
        title: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.homeAppbarTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: TColors.black)),
              Text(TTexts.homeAppbarSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .apply(color: TColors.appSecondaryColor)),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'DarkMode',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: TColors.appAccentColor),
              )),
          // circular avatar
          InkWell(
            onTap: () {
              // Navigate to profile page when the profile button is clicked
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 16, // Adjust the size as needed
                backgroundImage: AssetImage(
                    TImages.profile), // Replace with your image asset
              ),
            ),
          )
          // circular avatar
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(
                  255, 245, 239, 239), // Set your TabBar background color here
              child: const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Color.fromARGB(95, 3, 3, 3),
                unselectedLabelStyle: TextStyle(),
                indicatorColor: TColors.appSecondaryColor,
                padding: EdgeInsets.all(1),
                tabs: [
                  Tab(
                    icon: Icon(
                      Iconsax.home,
                      size: 25,
                    ),
                    iconMargin: EdgeInsets.all(2),
                    child: Text(
                      'Home',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Iconsax.folder_minus,
                      size: 25,
                    ),
                    iconMargin: EdgeInsets.all(2),
                    child: Text(
                      'Applications',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Iconsax.activity,
                      size: 25,
                    ),
                    iconMargin: EdgeInsets.all(2),
                    child: Text(
                      'Projects',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Iconsax.building,
                      size: 25,
                    ),
                    iconMargin: EdgeInsets.all(2),
                    child: Text(
                      'Companies',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Iconsax.user,
                      size: 25,
                    ),
                    iconMargin: EdgeInsets.all(2),
                    child: Text(
                      'Employees',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HomePage(),
                  Company(),
                  Projects(),
                  EmployeePage(),
                  EmployeePage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
