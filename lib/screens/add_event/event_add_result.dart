import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class EventResultScreen extends StatefulWidget {
  const EventResultScreen({super.key});

  @override
  State<EventResultScreen> createState() => _EventResultScreenState();
}

class _EventResultScreenState extends State<EventResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container()),
            const Text(
              'Event Created Successfully',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Flexible(child: Container()),
            const Icon(
              Icons.task_alt,
              size: 80,
              color: greenColor,
            ),
            Flexible(child: Container()),
            CustomButtom(action: 'Go Back', nav: () {}),
            Flexible(child: Container()),
          ],
        ),
      ),
    );
  }
}
