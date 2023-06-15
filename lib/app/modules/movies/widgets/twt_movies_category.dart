import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/twt_movie_card.dart';

class TwtMoviesCategory extends StatelessWidget {
  const TwtMoviesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Categoria'),
          const SizedBox(height: 20),
          SizedBox(
            height: 280,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => const TwtMovieCard(),
            ),
          ),
        ],
      ),
    );
  }
}
