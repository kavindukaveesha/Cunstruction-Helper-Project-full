import 'package:cunstruction_helper/features/shop/screens/post/expanded_widget.dart';
import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class CompanyList extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'company_name': 'Company 1',
      'company_image': TImages.profile,
      'rate': '4.5'
    },
    {
      'company_name': 'Company 2',
      'company_image': TImages.facebook,
      'rate': '4.5'
    },
    {
      'company_name': 'Company 3',
      'company_image': TImages.google,
      'rate': '3.5'
    },
    {
      'company_name': 'Company 4',
      'company_image': TImages.facebook,
      'rate': '3.5'
    },
    {
      'company_name': 'Company 5',
      'company_image': TImages.profile,
      'rate': '4.2'
    },
    {
      'company_name': 'Company 6',
      'company_image': TImages.profile,
      'rate': '4.5'
    },

    // Add more ad data as needed
  ];

  CompanyList({super.key});

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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: 32, // Adjust the size as needed
                                    backgroundImage: AssetImage(
                                      categories[index]['company_image']!,
                                    )),
                                const SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          categories[index]['company_name']!,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text('More Details'))
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(categories[index]['rate']!),
                                const Icon(Icons.star_half_outlined)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
            }));
  }
}





//  ListView.builder(
//             itemCount: categories.length,
//             itemBuilder: (context, index) {
//               return Expanded(
//                 child: Container(
//                   padding: const EdgeInsets.only(
//                     top: 10,
//                   ),

//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 242, 248, 255),
//                     shape: BoxShape.rectangle,
//                     border: Border.all(
//                       color: const Color.fromARGB(255, 115, 115, 115),
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   constraints: const BoxConstraints(minHeight: 50),
//                   // ignore: prefer_const_constructors
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         CircleAvatar(
//                             radius: 32, // Adjust the size as needed
//                             backgroundImage: AssetImage(
//                               categories[index]['category_image']!,
//                             )),
//                         const SizedBox(width: 20),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               categories[index]['Category_title']!,
//                               style: const TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.black),
//                               // Change text color
//                             ),
//                             ExpandedTextWidget(
//                                 textLength: 200,
//                                 text: '${categories[index]['description']}'),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             // }));