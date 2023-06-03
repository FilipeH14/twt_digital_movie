import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/modules/splash/splash_page.dart';

class TwtApp extends StatelessWidget {
  const TwtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twt Digital Movie',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
