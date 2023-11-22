import 'package:community_hub/widgets/business_card.dart';
import 'package:flutter/material.dart';

class Directories extends StatefulWidget {
  const Directories({super.key});

  @override
  State<Directories> createState() => _DirectoriesState();
}

class _DirectoriesState extends State<Directories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Directories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.pin_drop,
                color: Colors.red,
                size: 28,
              ),
            ],
          ),
          BusinessCard()
        ],
      ),
    );
  }
}
