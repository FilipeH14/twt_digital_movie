import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_field.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_filters.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

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
                    Text(FirebaseRemoteConfig.instance.getString('api_token_moviedb')),
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
