import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/screens/auth_screens/app_info.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Welcome to ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Community Hub',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                const Icon(
                  Icons.house,
                  size: 180,
                  color: greenColor,
                ),
                Expanded(child: Container()),
              ],
            ),
            const Text(
              'Discover local events',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Community hub is a user-friendly ,Mobile application that serves as a neighborhood hub, facilitating deeper connections between  neighborhoods and local businesses.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            CustomButtom(
              action: 'Continue',
              nav: () {
                print('nav to....');
                //navigate to more info screen
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MoreInfoScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
