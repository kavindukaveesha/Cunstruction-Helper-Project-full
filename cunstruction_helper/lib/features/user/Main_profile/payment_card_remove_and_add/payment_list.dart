import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Sample data model for a saved card
// Sample data model for a saved card
class SavedCard {
  final String cardNumber;
  final String expiryDate;

  SavedCard({required this.cardNumber, required this.expiryDate});
}

// PaymentCardList Widget
class PaymentCardList extends StatefulWidget {
  @override
  _PaymentCardListState createState() => _PaymentCardListState();
}

class _PaymentCardListState extends State<PaymentCardList> {
  // Sample list of saved cards
  List<SavedCard> savedCards = [
    SavedCard(cardNumber: '**** **** **** 1234', expiryDate: '12/22'),
    SavedCard(cardNumber: '**** **** **** 5678', expiryDate: '10/23'),
  ];

  // Function to remove a card
  void removeCard(SavedCard card) {
    setState(() {
      savedCards.remove(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          backgroundColor: TColors.appPrimaryColor,
          title: const Text('Payment Cards')),
      body: ListView.builder(
        itemCount: savedCards.length,
        itemBuilder: (context, index) {
          return PaymentCardWidget(
              savedCard: savedCards[index], onDelete: removeCard);
        },
      ),
      floatingActionButton: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.yellowAccent,
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddCardScreen()),
            );
          },
          child: const Text('Add new payment card'),
        ),
      ),
    );
  }
}

// PaymentCardWidget Widget
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
