import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/home/home_page.dart';

class HomeModule {
  HomeModule._();

  static Widget get module => MultiProvider(
        providers: const [],
        child: const HomePage(),
      );
}
