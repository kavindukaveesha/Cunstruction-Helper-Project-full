import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/update_details_form/update_details_textField_widget.dart';

// Main widget that contains the user profile information
class CompanyUserProfileData extends StatefulWidget {
  const CompanyUserProfileData({Key? key}) : super(key: key);

  @override
  State<CompanyUserProfileData> createState() => _CompanyUserProfileDataState();
}

class _CompanyUserProfileDataState extends State<CompanyUserProfileData> {
  late UpdateTextFieldModel comapnyNameModel;
  late UpdateTextFieldModel emailModel;
  late UpdateTextFieldModel cunstructionTypeModel;
  late UpdateTextFieldModel companyRegModel;
  late UpdateTextFieldModel locationModel;
  late UpdateTextFieldModel workExModel;
  late UpdateTextFieldModel descriptionModel;

  @override
  void initState() {
    super.initState();
    // Initialize the models with the TextEditingController
    comapnyNameModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Company Name',
      normalText: 'Maga Cunstructions',
      icon: Icons.person_outline_rounded,
    );

    cunstructionTypeModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Cunstruction company Type',
      normalText: 'Mega Cunstruction',
      icon: Icons.category_outlined,
    );

    companyRegModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Company Registration Id',
      normalText: 'c-23345',
      icon: Icons.account_box_outlined,
    );

    locationModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Location',
      normalText: 'c-23345',
      icon: Icons.location_on_outlined,
    );

    emailModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Email',
      normalText: 'maga"gmail.com',
      icon: Icons.email,
    );

    workExModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Working Experience',
      normalText: '3 years',
      icon: Icons.email,
    );

    descriptionModel = UpdateTextFieldModel(
      controller: TextEditingController(),
      textFieldName: 'Description',
      normalText:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit an ',
      icon: Icons.email,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Widget for handling the Username text field
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Company Informations',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextWidget(model: comapnyNameModel),
              const SizedBox(height: 16),
              // Widget for handling the Email text field

              TextWidget(model: companyRegModel),
              const SizedBox(height: 16),

              TextWidget(model: locationModel),
              const SizedBox(height: 16),

              TextWidget(model: emailModel),
              const SizedBox(height: 16),
            ],
          ),
          const Divider(
            // Add this divider for the black line
            color: Colors.black,
            thickness: 1,
            height: 20,
            indent: 10,
            endIndent: 10,
          ),

          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Working And Experience',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextWidget(model: workExModel),
            const SizedBox(height: 16),
          ]),

          TextWidget(model: descriptionModel),
          // Button to update the profile and print values
          TextButton(
            onPressed: () {
              
              print('Username: ${comapnyNameModel.controller.text}');
              print('Email: ${emailModel.controller.text}');
            },
            child: const Text(
              'Update Profile',
              style: TextStyle(
                  fontSize: 15,
                  color: TColors.appAccentColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
