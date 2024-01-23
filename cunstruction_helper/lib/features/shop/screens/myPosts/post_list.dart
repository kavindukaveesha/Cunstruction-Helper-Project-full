import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  final List<Map<String, String>> ads = [
    {
      'title': 'Ad Title 1',
      'date': 'January 1, 2024',
      'description': 'Description 1'
    },
    {
      'title': 'Ad Title 2',
      'date': 'January 2, 2024',
      'description': 'Description 2'
    },
    {
      'title': 'Ad Title 3',
      'date': 'January 3, 2024',
      'description': 'Description 3'
    },

    {
      'title': 'Ad Title 1',
      'date': 'January 1, 2024',
      'description': 'Description 1'
    },
    {
      'title': 'Ad Title 2',
      'date': 'January 2, 2024',
      'description': 'Description 2'
    },
    {
      'title': 'Ad Title 3',
      'date': 'January 3, 2024',
      'description': 'Description 3'
    },

    {
      'title': 'Ad Title 1',
      'date': 'January 1, 2024',
      'description': 'Description 1'
    },
    {
      'title': 'Ad Title 2',
      'date': 'January 2, 2024',
      'description': 'Description 2'
    },
    {
      'title': 'Ad Title 3',
      'date': 'January 3, 2024',
      'description': 'Description 3'
    },
    // Add more ad data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ad List'),
      ),
      body: ListView.builder(
        itemCount: ads.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0), // Add space between ListTiles
            child: Card(
              color: const Color.fromARGB(
                  255, 242, 248, 255), // Change the color of ListTile
              child: ListTile(
                title: Text(
                  ads[index]['title']!,
                  style:
                      const TextStyle(color: Colors.black), // Change text color
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date: ${ads[index]['date']}'),
                    Text('Description: ${ads[index]['description']}'),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PostListView(),
  ));
}
