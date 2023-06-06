import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_controller.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_field.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_filters.dart';

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
                    const MoviesFilters(),
                    Text(FirebaseRemoteConfig.instance
                        .getString('api_token_moviedb')),
                    const Text('Movies'),
                    const Text('Movies'),
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
