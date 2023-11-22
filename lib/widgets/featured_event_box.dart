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
      //  height: 120.0,
      // width: 120.0,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(
      //         'assets/assets/alucard.jpg'),
      //     fit: BoxFit.fill,
      //   ),
      //   shape: BoxShape.circle,
      // ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            boxData['image'],
            
          ),
        ),
        color: greenColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              boxData['title'],
              style: const TextStyle(
                color: darkColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(boxData['establishment']),
          ],
        ),
      ),
    );
  }
}
