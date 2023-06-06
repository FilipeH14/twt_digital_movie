import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class MoviesField extends StatelessWidget {
  const MoviesField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Filtrar',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: const Icon(FeatherIcons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
