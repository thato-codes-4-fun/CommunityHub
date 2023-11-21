import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class MiniBox extends StatelessWidget {
  final String discription;
  const MiniBox({super.key, required this.discription});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          border: Border.all(
        width: 2,
        color: greenColor,
      )),
      child: Center(
        child: Text(
          discription,
          style: const TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
