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
    // Add more ad data as needed
  ];

  PostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ads.length,
        itemBuilder: (context, index) {
          final ad = ads[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Card(
              color: const Color.fromARGB(255, 242, 248, 255),
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 242, 248, 255),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                      color: const Color.fromARGB(255, 115, 115, 115)),
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(minHeight: 50),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 5, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        ad['date']!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 24, 24, 24),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ad['title']!,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text.rich(
                            TextSpan(
                              text: 'Description:',
                              style: const TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: ad['description']!,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 87, 86, 86),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 6, 9, 195),
                            ),
                            onPressed: () {},
                            child: InkWell(
                              child: Row(
                                children: [
                                  const Icon(Icons.add_task),
                                  const SizedBox(width: 5),
                                  Text('All Gigs(${ad['gigs']})'),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const InkWell(
                              child: Row(
                                children: [
                                  Icon(Icons.update),
                                  SizedBox(width: 5),
                                  Text('Update'),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const InkWell(
                              child: Row(
                                children: [
                                  Icon(Icons.delete),
                                  SizedBox(width: 5),
                                  Text('Delete'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
