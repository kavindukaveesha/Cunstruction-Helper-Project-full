import 'package:cunstruction_helper/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupFormWidget extends StatelessWidget {
  final String textForId;
  const SignupFormWidget({Key? key, required this.textForId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: TSizes.appFormHeigh - 10),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Full Name'),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(textForId),
                prefixIcon: Icon(Icons.card_membership),
              ),
            ),
            const SizedBox(
              height: TSizes.appFormHeigh - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Email'),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: TSizes.appFormHeigh - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Phone Number'),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(
              height: TSizes.appFormHeigh - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('Password'),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(
              height: TSizes.appFormHeigh - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('SignUp'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
