import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/screens/add_event/preview_event.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:community_hub/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddEventDetailsScreen extends StatefulWidget {
  const AddEventDetailsScreen({super.key});

  @override
  State<AddEventDetailsScreen> createState() => _AddEventDetailsScreenState();
}

class _AddEventDetailsScreenState extends State<AddEventDetailsScreen> {
  final TextEditingController _eventName = TextEditingController();
  final TextEditingController _discription = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _category = TextEditingController();
  final TextEditingController _time = TextEditingController();

  @override
  void dispose() {
    _eventName.dispose();
    _discription.dispose();
    _date.dispose();
    _category.dispose();
    _time.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: greenColor,
              ),
              child: const Center(
                child: Icon(
                  Icons.upload,
                  size: 50,
                  color: whiteColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: _eventName,
              title: 'Event Name',
              hidePassword: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: _discription,
              title: 'Event description',
              hidePassword: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: _date,
              title: 'Event Date',
              hidePassword: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              controller: _time,
              title: 'Event Start Time',
              hidePassword: false,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtom(
              action: 'Preview',
              nav: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PreviewEVentCreated()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
