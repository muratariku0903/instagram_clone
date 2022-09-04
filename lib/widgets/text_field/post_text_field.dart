import 'package:flutter/material.dart';

class PostTextField extends StatelessWidget {
  PostTextField({
    required this.controller,
    this.hintText = 'input',
  });

  final TextEditingController controller;
  final String? hintText;

  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFFBDBDBD),
        ),
      ),
    );
  }
}
