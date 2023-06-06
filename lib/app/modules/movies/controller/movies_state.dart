// ignore_for_file: public_member_api_docs, sort_constructors_first
enum MoviesStatus { initial, success, error }

class MoviesState {
  final MoviesStatus status;

  MoviesState({
    required this.status,
  });

  const MoviesState.initial() : status = MoviesStatus.initial;

  MoviesState copyWith({
    MoviesStatus? status,
  }) {
    return MoviesState(
      status: status ?? this.status,
    );
  }
}
