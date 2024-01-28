import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryDropDown extends StatefulWidget {
  const CategoryDropDown({Key? key}) : super(key: key);

  @override
  _CategoryDropDownState createState() => _CategoryDropDownState();
}

class _CategoryDropDownState extends State<CategoryDropDown> {
  List data = [];
  int? _selectedId;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    const url = 'https://jsonplaceholder.typicode.com/todos';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
        if (data.isNotEmpty) {
          _selectedId = data[0]['id'];
        }
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
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
      child: DropdownButton(
        items: data.map((e) {
          return DropdownMenuItem(
            value: e['id'],
            child: Text(
              e['title'].length > 10
                  ? '${e['title'].substring(0, 10)}...'
                  : e['title'],
            ),
          );
        }).toList(),
        value: _selectedId,
        onChanged: (v) {
          setState(() {
            _selectedId = v as int;
            print('Selected ID: $_selectedId');
          });
        },
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
        underline: Container(
          height: 2,
          color: Colors.black,
        ),
      ),
    );
  }
}
