import 'package:community_hub/dummy_data/data.dart';
import 'package:community_hub/widgets/custom_circle.dart';
import 'package:community_hub/widgets/custom_header.dart';
import 'package:community_hub/widgets/featured_event_box.dart';
import 'package:flutter/material.dart';

class CommunityHub extends StatefulWidget {
  const CommunityHub({super.key});

  @override
  State<CommunityHub> createState() => _CommunityHubState();
}

class _CommunityHubState extends State<CommunityHub> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeader(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            // padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: 110,
            // color: greenColor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData().categories.length,
              itemBuilder: (context, index) => CircularText(
                title: DummyData().categories[index]['title'],
                image: DummyData().categories[index]['img'],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Featured Events',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyData().featureEvents.length,
                itemBuilder: (context, index) => FeaturedBox(
                      boxData: DummyData().featureEvents[index],
                    )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Local Hangouts',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DummyData().featureEvents.length,
                itemBuilder: (context, index) => FeaturedBox(
                      boxData: DummyData().featureEvents[index],
                    )),
          ),
        ],
      ),
    );
  }
}
