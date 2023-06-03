import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/modules/register/register_page.dart';

class RegisterModule {
  RegisterModule._();

  static Widget get module => MultiProvider(
        providers: const [],
        child: const RegisterPage(),
      );
}
