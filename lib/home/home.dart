import 'package:community_hub/widgets/custom_circle.dart';
import 'package:community_hub/widgets/custom_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> categories = [
    {
      'title': 'Comedy',
      'img': 'assets/images/stand-up.png',
    },
    {
      'title': 'Night Life',
      'img': 'assets/images/dancing.png',
    },
    {
      'title': 'Drinks',
      'img': 'assets/images/cheers.png',
    },
    {
      'title': 'Coffee',
      'img': 'assets/images/coffee-cup.png',
    },
    {
      'title': 'Food',
      'img': 'assets/images/fast-food.png',
    },
    {
      'title': 'Romantic',
      'img': 'assets/images/dancing.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                itemCount: categories.length,
                itemBuilder: (context, index) => CircularText(
                  title: categories[index]['title'],
                  image: categories[index]['img'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
