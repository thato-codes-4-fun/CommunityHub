import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularText extends StatefulWidget {
  final String title;
  final String image;
  const CircularText({super.key, required this.title, required this.image});
  @override
  State<CircularText> createState() => _CircularTextState();
}

class _CircularTextState extends State<CircularText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: greenColor,
                  width: 3,
                )
                // color: greenColor,
                ),
            child: Image.asset(
              widget.image,
              height: 30,
              width: 30,
              alignment: Alignment.center,
            ),
          ),
          Text(widget.title),
        ],
      ),
    );
  }
}
