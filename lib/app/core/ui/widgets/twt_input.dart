import 'package:flutter/material.dart';

class TwtInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const TwtInput({
    required this.label,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: label,
      ),
    );
  }
}
