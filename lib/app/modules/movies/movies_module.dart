import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_controller.dart';
import 'package:twt_digital_movie/app/modules/movies/movies_page.dart';
import 'package:twt_digital_movie/app/repositories/genre_movie/genre_movie_repository.dart';
import 'package:twt_digital_movie/app/repositories/genre_movie/genre_movie_repository_impl.dart';
import 'package:twt_digital_movie/app/services/genre_movie/genre_movie_service.dart';
import 'package:twt_digital_movie/app/services/genre_movie/genre_movie_service_impl.dart';

class MoviesModule {
  MoviesModule._();

  static Widget get module => MultiProvider(
        providers: [
          Provider<GenreMovieRepository>(
            create: (context) => GenreMovieRepositoryImpl(
              request: context.read(),
            ),
          ),
          Provider<GenreMovieService>(
            create: (context) => GenreMovieServiceImpl(
              genreMovieRepository: context.read(),
            ),
          ),
          Provider(
            create: (context) =>
                MoviesController(genreMovieService: context.read()),
          ),
        ],
        child: const MoviesPage(),
      );
}
