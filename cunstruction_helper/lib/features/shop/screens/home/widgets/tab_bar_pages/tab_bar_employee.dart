import 'package:cunstruction_helper/features/shop/screens/Employee/screen/display_customers/employees_list_page.dart';
import 'package:cunstruction_helper/features/shop/screens/home/Home_common/home_tprimaryheader_model.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/filter_buttons/filter_buttons.dart';
import '../../../Employee/screen/top_employee_row/employee_row_list.dart';
import '../../../searching_result/pages/searching page.dart';

class EmployeeTabPage extends StatefulWidget {
  const EmployeeTabPage({super.key});

  @override
  State<EmployeeTabPage> createState() => _EmployeeTabPageState();
}

class _EmployeeTabPageState extends State<EmployeeTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        // Top company row and search bar
        TprimaryHeaderModel(
            topRowTitle: 'Top Employees',
            horisontalRow: EmployeesRow(),
            more: '',
            clicktoMorePage: const EmployeeTabPage()),

        // Title
        Text(
          'Employees',
          style: Theme.of(context).textTheme.displaySmall,
        ),

        // Filter ads
        FilterButtonsRow(),

        //  All Employess
        EmployeesList()
      ],
    ));
  }
}
