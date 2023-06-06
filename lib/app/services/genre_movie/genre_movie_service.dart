import 'package:twt_digital_movie/app/models/genre_movie.dart';

abstract class GenreMovieService {
  Future<List<GenreMovie>> loadGenres();
}
