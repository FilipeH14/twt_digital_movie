// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:twt_digital_movie/app/models/genre_movie.dart';

enum MoviesStatus { initial, success, error }

class MoviesState extends Equatable {
  final MoviesStatus status;
  final List<GenreMovie> genre;

  const MoviesState({
    required this.status,
    required this.genre,
  });

  const MoviesState.initial()
      : status = MoviesStatus.initial,
        genre = const [];

  @override
  List<Object?> get props => [status, genre];

  MoviesState copyWith({
    MoviesStatus? status,
    List<GenreMovie>? genre,
  }) {
    return MoviesState(
      status: status ?? this.status,
      genre: genre ?? this.genre,
    );
  }
  
}
