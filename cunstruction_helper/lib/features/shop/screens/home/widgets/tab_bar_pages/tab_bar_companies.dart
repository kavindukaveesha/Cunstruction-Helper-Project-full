import 'package:cunstruction_helper/features/shop/screens/Employee/screen/display_customers/employees_list_page.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/compay_page_topCompany_row/Company_row_list.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/display_companies/com_list_page.dart';
import 'package:cunstruction_helper/features/shop/screens/company/screen/display_companies/company_list_page.dart';
import 'package:cunstruction_helper/features/shop/screens/home/Home_common/home_tprimaryheader_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/filter_buttons/filter_buttons.dart';
import '../../../Employee/screen/top_employee_row/employee_row_list.dart';
import '../../../searching_result/pages/searching page.dart';

class CompanyTabPage extends StatefulWidget {
  const CompanyTabPage({super.key});

  @override
  State<CompanyTabPage> createState() => _CompanyTabPageState();
}

class _CompanyTabPageState extends State<CompanyTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        // Top company row and search bar
        TprimaryHeaderModel(
            topRowTitle: 'Top Companies',
            horisontalRow: CompaniesRow(),
            more: '',
            clicktoMorePage: const CompanyTabPage()),

        // Title
        Text(
          'Companies',
          style: Theme.of(context).textTheme.displaySmall,
        ),

        // Filter ads
        FilterButtonsRow(),

        //  All Employess
        CompanyList()
      ],
    ));
  }
}
