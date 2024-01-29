import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DistrictCard extends StatefulWidget {
  @override
  _DistrictCardState createState() => _DistrictCardState();
}

class _DistrictCardState extends State<DistrictCard> {
  // Define a list to hold selected districts
  List<String> selectedDistricts = [];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Your desired district',),
      content: SingleChildScrollView(
        child: Column(
          children: [
            // districts
            Wrap(
              children: [
                buildDistrictButton('Ampara'),
                const SizedBox(width: 10),
                buildDistrictButton('Anuradhapura'),
                const SizedBox(width: 10),
                buildDistrictButton('Badulla'),
                const SizedBox(width: 10),
                buildDistrictButton('Batticaloa'),
                const SizedBox(width: 10),
                buildDistrictButton('Colombo'),
                const SizedBox(width: 10),
                buildDistrictButton('Galle'),
                const SizedBox(width: 10),
                buildDistrictButton('Gampaha'),
                const SizedBox(width: 10),
                buildDistrictButton('Hambantota'),
                const SizedBox(width: 10),
                buildDistrictButton('Jaffna'),
                const SizedBox(width: 10),
                buildDistrictButton('Kalutara'),
                const SizedBox(width: 10),
                buildDistrictButton('Kandy'),
                const SizedBox(width: 10),
                buildDistrictButton('Kegalle'),
                const SizedBox(width: 10),
                buildDistrictButton('Kilinochci'),
                const SizedBox(width: 10),
                buildDistrictButton('Kurunegala'),
                const SizedBox(width: 10),
                buildDistrictButton('Mannar'),
                const SizedBox(width: 10),
                buildDistrictButton('Matale'),
                const SizedBox(width: 10),
                buildDistrictButton('Matara'),
                const SizedBox(width: 10),
                buildDistrictButton('Monaragala'),
                const SizedBox(width: 10),
                buildDistrictButton('Mullaitivu'),
                const SizedBox(width: 10),
                buildDistrictButton('Nuwara Eliya'),
                const SizedBox(width: 10),
                buildDistrictButton('Polonnaruwa'),
                const SizedBox(width: 10),
                buildDistrictButton('Puttalam'),
                const SizedBox(width: 10),
                buildDistrictButton('Ratnapura'),
                const SizedBox(width: 10),
                buildDistrictButton('Trincomalee'),
                const SizedBox(width: 10),
                buildDistrictButton('Vavuniya'),
              ],
            ),
            const SizedBox(height: 8),

            //  Reset and Apply buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement Reset button functionality
                    // Clear selected districts and restore the original card layout
                    setState(() {
                      selectedDistricts.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    foregroundColor: Colors.blue,
                  ),
                  child: const Text('Reset', ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement Apply button functionality
                    // Filter and display details related to the selected districts
                    // You can access selectedDistricts list to get the selected districts
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    foregroundColor: Colors.blue,
                  ),
                  child: const Text('Apply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDistrictButton(String district) {
    bool isSelected = selectedDistricts.contains(district);

    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (isSelected) {
            selectedDistricts.remove(district);
          } else {
            selectedDistricts.add(district);
          }
        });
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected ? Colors.green : null,
      ),
      child: Text(district),
    );
  }
}
