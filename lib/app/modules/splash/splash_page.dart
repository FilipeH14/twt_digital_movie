import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/core/constants/routes_url.dart';
import 'package:twt_digital_movie/app/modules/splash/controller/splash_controller.dart';
import 'package:twt_digital_movie/app/modules/splash/controller/splash_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashController controller;

  @override
  void initState() {
    controller = context.read<SplashController>();
    controller.validateUser();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashController, SplashState>(
      listener: (context, state) {
        if (state.status == SplashStatus.error) {
          Future.delayed(
            const Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(RoutesUrl.login),
          );
        } else if (state.status == SplashStatus.success) {
          Future.delayed(
            const Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(RoutesUrl.home),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('splash')),
        body: const Center(
          child: Text('Teste teste'),
        ),
      ),
    );
  }
}
