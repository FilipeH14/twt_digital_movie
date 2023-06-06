import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/modules/movies/widgets/movies_field.dart';

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
                  children: const [
                    MoviesField(),
                    Text('Movies'),
                    Text('Movies'),
                    Text('Movies'),
                    Text('Movies'),
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
