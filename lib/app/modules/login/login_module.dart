import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/login/controller/login_controller.dart';
import 'package:twt_digital_movie/app/modules/login/login_page.dart';

class LoginModule {
  LoginModule._();

  static Widget get module => MultiProvider(
        providers: [
          Provider(
            create: (context) => LoginController(authService: context.read()),
          ),
        ],
        child: const LoginPage(),
      );
}
