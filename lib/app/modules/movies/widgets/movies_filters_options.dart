import 'package:flutter/material.dart';

class MoviesFiltersOptions extends StatelessWidget {
  const MoviesFiltersOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'filtro',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
