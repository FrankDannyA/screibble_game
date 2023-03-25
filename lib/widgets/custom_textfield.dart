import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintName;

  const CustomTextfield({
    Key? key,
    required this.controller,
    required this.hintName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.transparent),
    );

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: inputBorder,
        enabledBorder: inputBorder,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        filled: true,
        fillColor: const Color(0xffF5F5FA),
        hintText: hintName,
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
