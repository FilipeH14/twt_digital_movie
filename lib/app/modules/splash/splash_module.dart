import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/splash/controller/splash_controller.dart';
import 'package:twt_digital_movie/app/modules/splash/splash_page.dart';

class SplashModule {
  SplashModule._();

  static Widget get module => MultiProvider(
        providers: [
          Provider(
            create: (context) => SplashController(authService: context.read()),
          ),
        ],
        child: const SplashPage(),
      );
}
