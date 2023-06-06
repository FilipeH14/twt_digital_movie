import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_state.dart';

class MoviesController extends Cubit<MoviesState> {
  
  MoviesController() : super(const MoviesState.initial());

  Future<void> loadGenres() async {

  }
}
