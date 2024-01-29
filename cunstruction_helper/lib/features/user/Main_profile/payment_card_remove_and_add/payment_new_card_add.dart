import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Payment Card')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Card Number'),
            ),
            const SizedBox(height: 50.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'MM/YYYY'),
            ),
            const SizedBox(height: 50.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'CVV'),
            ),
            const SizedBox(height: 36),
            ElevatedButton(
              onPressed: () {
                // Handle adding new card
                Navigator.pop(context); // Close the screen after adding
              },
              child: const Text('Add Card'),
            ),
          ],
        ),
      ),
    );
  }
}
