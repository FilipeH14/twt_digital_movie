import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/home/controller/home_controller.dart';
import 'package:twt_digital_movie/app/modules/home/home_page.dart';

class HomeModule {
  HomeModule._();

  static Widget get module => MultiProvider(
        providers: [
          Provider(create: (context) => HomeController()),
        ],
        child: const HomePage(),
      );
}
