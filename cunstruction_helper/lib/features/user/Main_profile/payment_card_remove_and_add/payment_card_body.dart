import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'payment_list.dart';

class PaymentCardWidget extends StatelessWidget {
  final SavedCard savedCard;
  final Function(SavedCard) onDelete;

  PaymentCardWidget({required this.savedCard, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(savedCard.cardNumber),
        subtitle: Text(savedCard.expiryDate),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            // Handle card removal
            onDelete(savedCard);
          },
        ),
      ),
    );
  }
}