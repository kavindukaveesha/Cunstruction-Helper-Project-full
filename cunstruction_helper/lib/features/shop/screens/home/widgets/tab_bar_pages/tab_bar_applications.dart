import 'package:cunstruction_helper/features/shop/screens/Advertistment/application_calling_advertistment/screen/application_calling_ads_list.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/widgets/filter_buttons/filter_buttons.dart';
import '../../../company/screen/compay_page_topCompany_row/Company_row_list.dart';
import '../../../Advertistment/application_calling_ad.dart';
import '../../../searching_result/pages/searching page.dart';
import '../../Home_common/home_tprimaryheader_model.dart';
import 'tab_bar_companies.dart';

class ApplicationsPage extends StatefulWidget {
  const ApplicationsPage({Key? key}) : super(key: key);

  @override
  State<ApplicationsPage> createState() => _ApplicationsPageState();
}

class _ApplicationsPageState extends State<ApplicationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TprimaryHeaderModel(
            topRowTitle: 'Top Companies',
            horisontalRow: CompaniesRow(),
            more: 'Click to more',
            clicktoMorePage: const CompanyTabPage(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Application Calling',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                // Filter ads
                FilterButtonsRow(),
              ],
            ),
          ),
          // Add a container for All Ads

          // Add a ListView.builder for AdContainers
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return ApplicationCallingAdsList();
            },
          ),
        ],
      ),
    );
  }
}
