import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_filters_options.dart';

class MoviesFilters extends StatelessWidget {
  const MoviesFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        separatorBuilder: (_, index) => const SizedBox(width: 1),
        itemBuilder: (_, index) => const MoviesFiltersOptions(),
      ),
    );
  }
}
