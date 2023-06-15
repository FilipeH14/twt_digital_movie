import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/models/genre_movie.dart';

class MoviesFilters extends StatelessWidget {
  final List<GenreMovie> genres;

  const MoviesFilters({
    required this.genres,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        separatorBuilder: (_, index) => const SizedBox(width: 1),
        itemBuilder: (_, index) => Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            genres[index].name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
