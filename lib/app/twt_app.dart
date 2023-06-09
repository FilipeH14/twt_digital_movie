import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/core/constants/routes_url.dart';
import 'package:twt_digital_movie/app/modules/app_modules.dart';
import 'package:twt_digital_movie/app/modules/home/home_module.dart';
import 'package:twt_digital_movie/app/modules/login/login_module.dart';
import 'package:twt_digital_movie/app/modules/movies/movies_module.dart';
import 'package:twt_digital_movie/app/modules/register/register_module.dart';
import 'package:twt_digital_movie/app/modules/splash/splash_module.dart';
import 'package:twt_digital_movie/app/core/ui/theme/twt_theme.dart';

class TwtApp extends StatelessWidget {
  const TwtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppModules(
      application: MaterialApp(
        title: 'Twt Digital Movie',
        debugShowCheckedModeBanner: false,
        theme: TwtTheme.theme,
        initialRoute: RoutesUrl.splash,
        routes: {
          RoutesUrl.splash: (context) => SplashModule.module,
          RoutesUrl.login: (context) => LoginModule.module,
          RoutesUrl.register: (context) => RegisterModule.module,
          RoutesUrl.home: (context) => HomeModule.module,
          RoutesUrl.movies: (context) => MoviesModule.module,
        },
      ),
    );
  }
}
