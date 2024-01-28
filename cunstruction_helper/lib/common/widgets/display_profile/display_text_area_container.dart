import 'package:flutter/material.dart';

class DisplayTextField extends StatelessWidget {
  final String text;
  final String labelText;
  final IconData icon;
  const DisplayTextField(
      {super.key,
      required this.text,
      required this.icon,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
              width: 1, color: const Color.fromARGB(255, 223, 222, 222)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Text(
                    labelText,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Expanded(
                child: SingleChildScrollView(
                  //for horizontal scrolling
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        wordSpacing: 2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
