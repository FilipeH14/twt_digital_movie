import 'dart:developer';

import 'package:twt_digital_movie/app/core/constants/endpoints.dart';
import 'package:twt_digital_movie/app/core/constants/http_methods.dart';
import 'package:twt_digital_movie/app/core/network/base_rest_movies.dart';
import 'package:twt_digital_movie/app/models/genre_movie.dart';

import './genre_movie_repository.dart';

class GenreMovieRepositoryImpl implements GenreMovieRepository {
  final BaseRestMovies _request;

  GenreMovieRepositoryImpl({required BaseRestMovies request})
      : _request = request;

  @override
  Future<List<GenreMovie>> loadGenres() async {
    try {
      final result = await _request.movieDioRequest(
        url: MoviesEndpoints.genre,
        method: HttpMethod.get,
      );

      final genres = (result['genres'] as List<Map<String, dynamic>>)
          .map((e) => GenreMovie.fromMap(e))
          .toList();

      return genres;
    } on Exception catch (e, s) {
      log('Error request genres movies', error: e, stackTrace: s);
      throw Error();
    }
  }
}
