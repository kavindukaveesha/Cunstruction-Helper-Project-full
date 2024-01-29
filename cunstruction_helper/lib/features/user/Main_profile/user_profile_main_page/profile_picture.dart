import 'package:cunstruction_helper/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../utils/constants/colors.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  // Placeholder for the profile picture
  String _profilePicture = TImages.profile;

  // Function to handle the image picker
  Future<void> _pickImage() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        // Implement your image upload logic here using ImageService.uploadFile
        // Example: await ImageService.uploadFile(pickedFile.path);

        setState(() {
          _profilePicture = pickedFile.path!;
        });
      }
    } catch (e) {
      // Handle exceptions here, you can log or show an error message.
      print('Error picking image: $e');
      // Optionally show an error message to the user
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Failed to pick image. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  // Function to show the bottom sheet for photo upload
  void _showPhotoUploadSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Take Photo'),
                onTap: () {
                  // Implement logic to take a photo using the camera
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from Gallery'),
                onTap: () {
                  _pickImage(); // Trigger image picker
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var isDarkMood = brightness == Brightness.dark;
    return GestureDetector(
      onTap: _showPhotoUploadSheet, // Show the bottom sheet on tap
      child: Stack(
        children: [
          // Profile picture inside a circular container
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(60), // Specify the border radius
              border: Border.all(
                color: isDarkMood
                    ? Colors.white
                    : TColors.appSecondaryColor, // Specify the border color
                width: 1, // Specify the border width
              ),
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60,
              backgroundImage: AssetImage(''),
            ),
          ),
          // Camera icon at the right end
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
