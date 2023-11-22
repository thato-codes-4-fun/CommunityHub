import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class ViewEventDetails extends StatefulWidget {
  const ViewEventDetails({super.key});

  @override
  State<ViewEventDetails> createState() => _ViewEventDetailsState();
}

class _ViewEventDetailsState extends State<ViewEventDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Karooke Night',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'at NewsCafe',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              height: 200,
              decoration: const BoxDecoration(
                color: greenColor,
              ),
              child: Image.asset(
                'assets/images/karookee.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Event Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Location: SunningHill Lake',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            const Text(
              'Time: 16h00-late',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            const Text(
              'Date: 02 December 2023',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Step into Cubanna for an electrifying karaoke night! With vibrant lights and an inviting stage, friends gather to sip cocktails and cheer on performers. From classics to chart-toppers, everyone becomes a star in a lively atmosphere filled with laughter, applause, and shared musical moments.',
            ),
            Flexible(child: Container()),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.chat_bubble,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'RSVP',
                      style: TextStyle(
                        fontSize: 23.5,
                        color: greenColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: yellowColor,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: darkColor,
                      size: 40,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
