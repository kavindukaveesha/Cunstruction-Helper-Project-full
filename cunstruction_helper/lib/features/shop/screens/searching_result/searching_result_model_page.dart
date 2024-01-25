import 'package:cunstruction_helper/features/shop/screens/category/screen/display_categories/all_categories_display_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../category/model/Category_model.dart';

class SearchingResultModelPage extends StatefulWidget {
  List<CategoryModel> categories;
  final int categoryIndex;
   

  SearchingResultModelPage(
      {super.key, required this.categoryIndex, required this.categories});

  @override
  State<SearchingResultModelPage> createState() =>
      _SearchingResultModelPageState();
}

class _SearchingResultModelPageState extends State<SearchingResultModelPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.categories.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Get the selected user based on the index
    CategoryModel selectedCategory = widget.categories[widget.categoryIndex];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(selectedCategory.title),
      ),
      body: DefaultTabController(
        length: 3,
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
                padding: EdgeInsets.all(4),
                dividerHeight: 0,
                tabs: [
                  Tab(
                    child: Text(
                      'Employees',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Companies',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Advetistment',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
