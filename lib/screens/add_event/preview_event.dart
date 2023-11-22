import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/screens/add_event/event_add_result.dart';
import 'package:community_hub/widgets/preview_event.dart';
import 'package:flutter/material.dart';

class PreviewEVentCreated extends StatefulWidget {
  const PreviewEVentCreated({super.key});

  @override
  State<PreviewEVentCreated> createState() => _PreviewEVentCreatedState();
}

class _PreviewEVentCreatedState extends State<PreviewEVentCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Preview Event'),
        toolbarHeight: 100,
        actions: [
          SizedBox(
            width: 100,
            height: 300,
            // color: greenColor,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EventResultScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.save,
                    color: greenColor,
                    size: 35,
                  ),
                ),
                const Text(
                  'Save',
                  style: TextStyle(),
                ),
              ],
            ),
          )
        ],
      ),
      body: const PreviewEventWidget(),
    );
  }
}
