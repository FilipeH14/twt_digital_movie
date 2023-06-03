import 'package:flutter/material.dart';

class TwtInput extends StatelessWidget {
  final String label;

  const TwtInput({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: label,
      ),
    );
  }
}
