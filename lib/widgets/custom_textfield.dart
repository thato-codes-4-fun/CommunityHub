import 'package:community_hub/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String title;
  final bool hidePassword;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.title,
    required this.hidePassword,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.hidePassword,
      decoration: InputDecoration(
        hintText: widget.title,
        border: const OutlineInputBorder(
            borderSide: BorderSide(
          color: greenColor,
          width: 2,
          style: BorderStyle.solid,
        )),
      ),
    );
  }
}
