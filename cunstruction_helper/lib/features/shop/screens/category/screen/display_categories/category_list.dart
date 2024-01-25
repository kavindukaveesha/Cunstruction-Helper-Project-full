import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../searching_result/searching_result_model_page.dart';
import '../../controller/getAllCategories.dart';
import '../../model/Category_model.dart';
import 'Category_card/category_card.dart';

class CategoryGridView extends StatelessWidget {
  final CategoryController categoryController = CategoryController();

  CategoryGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryModel>>(
      future: categoryController.fetchCategories(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return a loading indicator or placeholder widget
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // Handle errors
          return Text('Error: ${snapshot.error}');
        } else {
          // Display your GridView using the fetched data
          List<CategoryModel> categories = snapshot.data!;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //  can adjust the number of columns as needed
              crossAxisSpacing:
                  8.0, // Adjust spacing between items horizontally
              mainAxisSpacing: 8.0, // Adjust spacing between items vertically
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => SearchingResultModelPage(
                      categories: categories, categoryIndex: index));
                },
                child: CategoryCard(
                  categoryModel: CategoryModel(
                    image: categories[index].image,
                    title:
                        '${categories[index].title} ${categories[index].title}',
                    description:
                        '${categories[index].title} ${categories[index].title}',
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
