import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class FeaturedBox extends StatelessWidget {
  final Map<String, dynamic> boxData;
  const FeaturedBox({super.key, required this.boxData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        right: 20,
      ),
      width: 160,
      height: 220,
      decoration: BoxDecoration(
        color: greenColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(boxData['title']),
            Text(boxData['establishment']),
          ],
        ),
      ),
    );
  }
}
