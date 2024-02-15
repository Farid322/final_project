import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormFieldd extends StatelessWidget {
  CustomTextFormFieldd({
    super.key,
    required this.hintText,
    this.width = 350,
    this.height = 50,
  });
  final String hintText;
  final double width;
  final double height;
  IconData? textFormIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 21,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontFamily: 'Roboto'),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        obscureText: true,
      ),
    );
  }
}
