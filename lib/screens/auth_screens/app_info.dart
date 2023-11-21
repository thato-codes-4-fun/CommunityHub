import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:community_hub/widgets/mini_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Stay Connected with your community',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              // width: MediaQuery.of(context).size.width * 0.100,
              height: MediaQuery.of(context).size.height * 0.40,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MiniBox(
                        discription: 'Discover Local Events',
                      ),
                      MiniBox(
                        discription: 'View Events',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MiniBox(
                        discription: 'Promote Events',
                      ),
                      MiniBox(
                        discription: 'Engage With Community',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtom(action: 'Login', nav: () {}),
            const SizedBox(
              height: 40,
            ),
            CustomButtom(action: 'Register', nav: () {}),
          ],
        ),
      ),
    );
  }
}
