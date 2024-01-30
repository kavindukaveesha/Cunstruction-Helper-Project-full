import 'package:flutter/material.dart';

// Model to manage the state of each text field
class UpdateTextFieldModel {
  TextEditingController controller;
  String textFieldName;
  String normalText;
  IconData icon;

  UpdateTextFieldModel({
    required this.controller,
    required this.textFieldName,
    required this.normalText,
    required this.icon,
  });
}

// Widget to handle each individual text field
class TextWidget extends StatefulWidget {
  final UpdateTextFieldModel model;
  const TextWidget({Key? key, required this.model}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  bool isEditing = false;
  @override
  void initState() {
    super.initState();
    // Set the initial value of the TextFormField when the widget is created
    widget.model.controller.text = widget.model.normalText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.model.textFieldName),
              TextButton(
                onPressed: () {
                  setState(() {
                    isEditing = !isEditing;
                    if (isEditing) {
                      // Set the text to normalText when editing starts
                      widget.model.controller.text = widget.model.normalText;
                    }
                  });
                },
                child: Text(isEditing ? 'Submit' : 'Edit'),
              ),
            ],
          ),
        ),
        TextFormField(
          controller: widget.model.controller,
          enabled: isEditing,
          decoration: InputDecoration(
            hintText: widget.model.controller.text,
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(widget.model.icon),
          ),
          onFieldSubmitted: (value) {
            // Print the submitted value and the current text

            print(widget.model.controller.text);
          },
        ),
      ],
    );
  }
}
