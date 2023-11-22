import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({super.key});

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      color: greenColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: whiteColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/grocery.jpg',
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Checkers',
                style: TextStyle(
                  fontSize: 25,
                  color: whiteColor,
                ),
              ),
              subtitle: const Text(
                'Groceries',
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: blueColor,
                    shape: BoxShape.circle,
                  ),
                  child: TextButton(
                    child: const Icon(
                      Icons.phone,
                      color: whiteColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: const BoxDecoration(
                    color: locationRedColor,
                    shape: BoxShape.circle,
                  ),
                  child: TextButton(
                    child: const Icon(
                      Icons.pin_drop_outlined,
                      color: whiteColor,
                    ),
                    onPressed: () {/* ... */},
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// SizedBox(
//       height: 100,
//       width: 100,
//       child: Column(
//         children: [
//           Container(
//             width: 80,
//             height: 80,
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   color: greenColor,
//                   width: 3,
//                 )
//                 // color: greenColor,
//                 ),
//             child: Image.asset(
//               widget.image,
//               height: 30,
//               width: 30,
//               alignment: Alignment.center,
//             ),
//           ),
//           Text(widget.title),
//         ],
//       ),
//     );
