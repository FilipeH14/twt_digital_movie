import 'package:twt_digital_movie/app/models/genre_movie.dart';
import 'package:twt_digital_movie/app/repositories/genre_movie/genre_movie_repository.dart';

import './genre_movie_service.dart';

class GenreMovieServiceImpl implements GenreMovieService {
  final GenreMovieRepository _genreMovieRepository;

  GenreMovieServiceImpl({required GenreMovieRepository genreMovieRepository})
      : _genreMovieRepository = genreMovieRepository;

  @override
  Future<GenreMovie> loadGenres() => _genreMovieRepository.loadGenres();
}
