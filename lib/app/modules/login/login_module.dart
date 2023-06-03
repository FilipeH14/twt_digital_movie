import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/login/login_page.dart';

class LoginModule {
  LoginModule._();

  static Widget get module => MultiProvider(
        providers: const [],
        child: const LoginPage(),
      );
}
