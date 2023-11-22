import 'package:community_hub/screens/add_event/add_event_details.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              'Events can only be created by buisiness accounts',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            child: const Text(
              'Your account is a business account for #Cubana',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Flexible(child: Container()),
          CustomButtom(
              action: 'Continue',
              nav: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddEventDetailsScreen()));
              }),
        ],
      ),
    );
  }
}
