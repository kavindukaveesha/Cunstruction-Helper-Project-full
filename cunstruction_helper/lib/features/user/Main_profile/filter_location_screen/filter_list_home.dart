import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'district_dialog.dart';


class FilterButtonWindow extends StatelessWidget {
  const FilterButtonWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return DistrictCard();
              },
            );
          },
          child: const Text('Filter'),
        ),
      ),
    );
  }
}
