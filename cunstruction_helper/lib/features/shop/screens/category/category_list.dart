import 'package:cunstruction_helper/features/shop/screens/post/expanded_widget.dart';
import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {

  final List<Map<String, String>> categories = [
    {
      'Category_title': 'category title 1',
      'description':
          'Description 1Description 1Description 1Description 1Description 1Description 1',
      'category_image': TImages.profile
    },

    {
      'Category_title': 'category title 1',
      'description':
          'Description 1Description 1Description 1Description 1Description 1Description 1',
      'category_image': TImages.profile
    },

    {
      'Category_title': 'category title 1',
      'description':
          'Description 1Description 1Description 1Description 1Description 1Description 1',
      'category_image': TImages.profile
    },

    {
      'Category_title': 'category title 1',
      'description':
          'Description 1Description 1Description 1Description 1Description 1Description 1',
      'category_image': TImages.profile
    },

    {
      'Category_title': 'category title 1',
      'description':
          'Description 1Description 1Description 1Description 1Description 1Description 1',
      'category_image': TImages.profile
    },

    {
      'Category_title': 'category title 1',
      'description':
          'Description 1Description 1Description 1Description 1Description 1Description 1',
      'category_image': TImages.profile
    },

    // Add more ad data as needed
  ];

  CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
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
                  constraints: const BoxConstraints(minHeight: 20),
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 5, left: 10, right: 10),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 32, // Adjust the size as needed
                                backgroundImage: AssetImage(
                                  categories[index]['category_image']!,
                                )),
                            const SizedBox(width: 20),
                            Text(
                              categories[index]['Category_title']!,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ExpandedTextWidget(
                            textLength: 30,
                            text: categories[index]['description']!)
                      ],
                    ),
                  ));
            }));
  }
}



