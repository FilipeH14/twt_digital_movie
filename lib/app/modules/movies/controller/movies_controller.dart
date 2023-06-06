import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_state.dart';
import 'package:twt_digital_movie/app/services/genre_movie/genre_movie_service.dart';

class MoviesController extends Cubit<MoviesState> {
  final GenreMovieService _genreMovieService;

  MoviesController({required GenreMovieService genreMovieService})
      : _genreMovieService = genreMovieService,
        super(const MoviesState.initial());

  Future<void> loadGenres() async {
    emit(state.copyWith(status: MoviesStatus.loading));

    final genres = await _genreMovieService.loadGenres();
    log('$genres');
    emit(state.copyWith(status: MoviesStatus.success, genre: genres));
  }
}
