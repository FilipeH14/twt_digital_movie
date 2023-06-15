import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_controller.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_state.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_field.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_filters.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/twt_movies_category.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  late final MoviesController controller;

  @override
  void initState() {
    controller = context.read<MoviesController>();

    controller.loadGenres();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constrains.maxHeight,
              minWidth: constrains.minWidth,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const MoviesField(),
                    BlocBuilder<MoviesController, MoviesState>(
                      builder: (context, state) =>
                          MoviesFilters(genres: state.genres),
                    ),
                    const TwtMoviesCategory(),
                    const TwtMoviesCategory(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
