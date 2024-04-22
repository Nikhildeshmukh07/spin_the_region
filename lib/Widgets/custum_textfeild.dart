import 'package:flutter/material.dart';
import 'package:spin_the_region/utils/colors.dart';

class CustumTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustumTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.blue, blurRadius: 5, spreadRadius: 2)
      ]),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: bgColor, filled: true, hintText: hintText),
      ),
    );
  }
}
