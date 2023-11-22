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
            Stack(
              children: [
                Container(
                  color: darkColor.withOpacity(0.7),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.125,
                ),
                Text(
                  boxData['title'],
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Text(
                    boxData['establishment'],
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
