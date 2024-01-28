import 'package:cunstruction_helper/features/shop/screens/Employee/screen/top_employee_row/employee_row_list.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/compay_page_topCompany_row/Company_row_list.dart';
import 'package:cunstruction_helper/features/shop/screens/home/widgets/tab_bar_pages/tab_bar_companies.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/filter_buttons/filter_buttons.dart';
import '../../../Advertistment/Project_selling_advertistment/screen/project_selling_ad_list.dart';
import '../../../customers/screen/display_customers/all_companies_display_page.dart';
import '../../../customers/screen/top_customers_row/Company_row_list.dart';
import '../../../searching_result/pages/searching page.dart';
import '../../Home_common/home_tprimaryheader_model.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  String selectedLocation = 'Colombo';
  String selectedCategory = 'Electric';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        // Top company row and search bar
        TprimaryHeaderModel(
            topRowTitle: 'Top Customers',
            horisontalRow: CompaniesRow(),
            
            more: 'Clicke to more',
            clicktoMorePage: AllCustomersPage()),

        // Title
        Text(
          'Projects',
          style: Theme.of(context).textTheme.displaySmall,
        ),

        // Filter ads
        FilterButtonsRow(),

        //  All Employess
        ProjectSellingList()
      ],
    ));
  }
}
