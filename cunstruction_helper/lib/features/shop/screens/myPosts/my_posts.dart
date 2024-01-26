import 'package:cunstruction_helper/features/shop/screens/myPosts/post_list.dart';
import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../Advertistment/expanded_widget.dart';

class MyPosts extends StatelessWidget {
  const MyPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 30.0,
          backgroundColor: TColors.appPrimaryColor,
          title: Text(
            'My Posts',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: PostListView());
  }
}
