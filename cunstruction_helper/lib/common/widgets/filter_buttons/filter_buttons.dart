import 'package:cunstruction_helper/common/widgets/filter_buttons/category_dropdown.dart';
import 'package:cunstruction_helper/features/shop/screens/category/controller/getAllCategories.dart';
import 'package:flutter/material.dart';

class FilterButtonsRow extends StatefulWidget {
  FilterButtonsRow({Key? key}) : super(key: key);

  @override
  _FilterButtonsRowState createState() => _FilterButtonsRowState();
}

class _FilterButtonsRowState extends State<FilterButtonsRow> {
  final CategoryController categoryController = CategoryController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          const Expanded(
            child: SingleChildScrollView(
              child: CategoryDropDown(),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),


          const Expanded(
            child: SingleChildScrollView(
              child: CategoryDropDown(),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),

          
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () {
                // Add your filter logic here
              },
            ),
          ),
        ],
      ),
    );
  }
}
