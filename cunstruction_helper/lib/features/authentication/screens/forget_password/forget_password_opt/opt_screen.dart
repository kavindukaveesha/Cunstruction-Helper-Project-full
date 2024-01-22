import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/constants/sizes.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(TSizes.appDefaultsize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CO\nDE',
                style: GoogleFonts.montserrat(
                    fontSize: 80.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Verification',
                style: GoogleFonts.montserrat(
                    fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Enter the verification code sent at kavindu@gmail.com',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) {
                  print(code);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Next')))
            ],
          ),
        ),
      ),
    );
  }
}
