// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:twt_digital_movie/app/models/genre_movie.dart';

enum MoviesStatus { initial, loading, success, error }

class MoviesState extends Equatable {
  final MoviesStatus status;
  final List<GenreMovie> genres;

  const MoviesState({
    required this.status,
    required this.genres,
  });

  const MoviesState.initial()
      : status = MoviesStatus.initial,
        genres = const [];

  @override
  List<Object?> get props => [status, genres];

  MoviesState copyWith({
    MoviesStatus? status,
    List<GenreMovie>? genres,
  }) {
    return MoviesState(
      status: status ?? this.status,
      genres: genres ?? this.genres,
    );
  }
}
