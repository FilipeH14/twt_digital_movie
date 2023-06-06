import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/movies/controller/movies_controller.dart';
import 'package:twt_digital_movie/app/modules/movies/movies_page.dart';

class MoviesModule {
  MoviesModule._();

  static Widget get module => MultiProvider(
        providers: [
          Provider(create: (context) => MoviesController()),
        ],
        child: const MoviesPage(),
      );
}
