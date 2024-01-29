import 'package:flutter/material.dart';

class UserModel {
  String userName;

  UserModel({required this.userName});
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
 
  
  UserModel user = UserModel(userName: 'Kavindu k');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
