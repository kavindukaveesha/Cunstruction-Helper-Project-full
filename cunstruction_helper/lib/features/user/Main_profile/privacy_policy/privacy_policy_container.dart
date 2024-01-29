import 'package:cunstruction_helper/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyContainer extends StatelessWidget {
  const PrivacyPolicyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Construction App',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      decoration: TextDecoration.underline,
                      color: TColors.appAccentColor,
                    ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Our construction-focused mobile app is designed to streamline the'
                ' hiring process within the industry, providing a platform for '
                'construction companies to efficiently connect with skilled '
                'professionals',
              ),
              const SizedBox(height: 16.0),
              Text(
                'User-Friendly Registration',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: TColors.appAccentColor,
                    ),
              ),
              const Text(
                'Through a user-friendly registration system, '
                'construction companies can create accounts, '
                'facilitating seamless access to a pool of registered individuals. '
                'This empowers them to hire qualified personnel for their projects.',
              ),
              const SizedBox(height: 16.0),
              Text(
                'Bidding Mechanism',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: TColors.appAccentColor,
                    ),
              ),
              const Text(
                'The app incorporates a bidding mechanism, '
                'enabling companies to review project proposals submitted by registered users. '
                'Construction professionals can showcase their expertise by presenting detailed project proposals, '
                'including scope, timeline, and budget. Companies, in turn,'
                ' have the flexibility to evaluate these proposals and place competitive bids.',
              ),
              const SizedBox(height: 16.0),
              Text(
                'Privacy Policy',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: TColors.appAccentColor,
                    ),
              ),
              const Text(
                'In crafting our privacy policy, we prioritize the protection of user data and privacy. '
                'We explicitly outline the information collected during the registration process and how it is utilized. '
                'Our policy emphasizes secure data storage practices and encryption methods to safeguard sensitive information. '
                'Additionally, it addresses the purpose of data usage, focusing on facilitating the hiring and bidding processes while respecting user privacy.',
              ),
              const SizedBox(height: 16.0),
              Text(
                'Clear Communication and Transparency',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: TColors.appAccentColor,
                    ),
              ),
              const Text(
                'Clear communication is established regarding third-party access, '
                'if applicable, and users rights pertaining to their data. '
                'To maintain transparency, our privacy policy includes contact information for users to address privacy-related inquiries.',
              ),
              const SizedBox(height: 16.0),
              Text(
                'Security Measures',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: TColors.appAccentColor,
                    ),
              ),
              const Text(
                'By implementing robust security measures, facilitating efficient hiring processes, '
                'and ensuring adherence to privacy standards, our construction-focused mobile app aims to provide a '
                'trusted and secure platform for professionals in the construction field.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
