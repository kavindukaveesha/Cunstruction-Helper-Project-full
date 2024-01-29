import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Payment Card')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Card Number'),
              // Other text form fields for expiration date, CVV, etc.
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle adding new card
                Navigator.pop(context); // Close the screen after adding
              },
              child: Text('Add Card'),
            ),
          ],
        ),
      ),
    );
  }
}