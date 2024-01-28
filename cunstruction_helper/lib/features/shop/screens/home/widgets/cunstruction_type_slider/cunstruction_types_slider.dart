import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/Construction_types_card/cunstrctuction_types_card.dart';

class CunstrctionTypesRow extends StatelessWidget {
  CunstrctionTypesRow({super.key});
  final List<Map<String, dynamic>> CTypesCard = [
    {
      'avatarImage': TImages.companyConstruction,
      'companyText': 'Company type 1',
      'numOfCompanies': '100+',
      'bgColor1': const Color.fromARGB(255, 242, 248, 255),
      'bgColor2': const Color.fromARGB(255, 184, 227, 248),
    },

    {
      'avatarImage': TImages.companyConstruction,
      'companyText': 'Company type 1',
      'numOfCompanies': '100+',
      'bgColor1': const Color.fromARGB(255, 242, 248, 255),
      'bgColor2': const Color.fromARGB(255, 184, 227, 248),
    },

    {
      'avatarImage': TImages.companyConstruction,
      'companyText': 'Company type 1',
      'numOfCompanies': '100+',
      'bgColor1': const Color.fromARGB(255, 242, 248, 255),
      'bgColor2': const Color.fromARGB(255, 184, 227, 248),
    },

    {
      'avatarImage': TImages.companyConstruction,
      'companyText': 'Company type 1',
      'numOfCompanies': '100+',
      'bgColor1': const Color.fromARGB(255, 242, 248, 255),
      'bgColor2': const Color.fromARGB(255, 184, 227, 248),
    },

    // Add more construction types as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: CTypesCard.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CunstrctionTypeCard(
              avatarImage: CTypesCard[index]['avatarImage'],
              companyText: CTypesCard[index]['companyText'],
              numOfCompanies: CTypesCard[index]['numOfCompanies'],
              bgColor1: CTypesCard[index]['bgColor1'],
              bgColor2: CTypesCard[index]['bgColor2'],
            ),
          );
        },
      ),
    );
  }
}



// Create a StatelessWidget named CategoryRow
// class CunstrctionTypesRow extends StatelessWidget {
//   // Instantiate a CategoryController for fetching categories
//   final CustomerController customerController = CustomerController();

//   // Constructor for the EmpployeeRow widget
//   CunstrctionTypesRow({super.key});

//   // Build method for constructing the widget
//   @override
//   Widget build(BuildContext context) {
//     // Use FutureBuilder to asynchronously fetch a list of EmpployeeModel
//     return FutureBuilder<List<CustomerModel>>(
//       future: customerController.fetchCustomers(),
//       builder: (context, snapshot) {
//         // Check the connection state for loading, and show a loading indicator if waiting.until get data show CircularProgressIndicator
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const CircularProgressIndicator();
//         }
//         // Check for errors, and display an error message if there's an error
//         else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         }
//         // If there are no errors, display the ListView with fetched data
//         else {
//           // Extract the list of EmployeeModel from the snapshot data
//           final List<CustomerModel> customers = snapshot.data!;

//           // Return a horizontal ListView of TVerticalImageTextCategories
//           return SizedBox(
//             width: double.infinity,
//             height: 80,
//             child: ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemCount: customers.length,
//               itemBuilder: (_, index) {
//                 // Display each customer using the CunstrctionTypeCard widget
//                 return CunstrctionTypeCard(
//                   avatarImage: customers[index].image,
//                   companyText: customers[index].customerName,
//                   numOfCompanies: 'Some value', // You need to provide the actual value here
//                   bgColor: Colors.blue, // You need to provide the actual color here
//                 );
//               },
//             ),
//           );
//         }
//       },
//     );
//   }
// }
