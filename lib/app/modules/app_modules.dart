import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/core/network/base_rest_movies.dart';
import 'package:twt_digital_movie/app/core/network/base_rest_user.dart';
import 'package:twt_digital_movie/app/repositories/auth/auth_repository.dart';
import 'package:twt_digital_movie/app/repositories/auth/auth_repository_impl.dart';
import 'package:twt_digital_movie/app/services/auth/auth_service.dart';
import 'package:twt_digital_movie/app/services/auth/auth_service_impl.dart';

class AppModules extends StatelessWidget {
  final Widget application;

  const AppModules({
    required this.application,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => BaseRestUser()),
        Provider(create: (context) => BaseRestMovies()),
        Provider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(request: context.read()),
        ),
        Provider<AuthService>(
          create: (context) => AuthServiceImpl(authRepository: context.read()),
        ),
      ],
      child: application,
    );
  }
}
