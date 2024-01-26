import 'package:cunstruction_helper/features/shop/screens/category/model/Category_model.dart';
import 'package:cunstruction_helper/features/shop/screens/searching_result/searching_result_model_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../Advertistment/expanded_widget.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(categoryModel.image),
                ),
                const SizedBox(height: 20),
                SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                  categoryModel.title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
                const SizedBox(height: 10),
                // ExpandedTextWidget(
                //   textLength: 30,
                //   text: categoryModel.description,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
