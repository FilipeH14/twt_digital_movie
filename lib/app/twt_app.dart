import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/modules/app_modules.dart';
import 'package:twt_digital_movie/app/modules/home/home_module.dart';
import 'package:twt_digital_movie/app/modules/login/login_module.dart';
import 'package:twt_digital_movie/app/modules/register/register_module.dart';
import 'package:twt_digital_movie/app/modules/splash/splash_page.dart';
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
        initialRoute: '/login',
        routes: {
          '/': (context) => const SplashPage(),
          '/login': (context) => LoginModule.module,
          '/register': (context) => RegisterModule.module,
          '/home': (context) => HomeModule.module,
        },
      ),
    );
  }
}
