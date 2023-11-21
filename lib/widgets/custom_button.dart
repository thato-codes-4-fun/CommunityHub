import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
  final String action;
  final void Function()? nav;
  const CustomButtom({super.key, required this.action, required this.nav});

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: widget.nav,
        child: Container(
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(20),
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          child: Center(
            child: Text(widget.action,
                style: const TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ),
        ),
      ),
    );
  }
}
