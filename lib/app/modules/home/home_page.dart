import 'dart:developer';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/core/constants/routes_url.dart';
import 'package:twt_digital_movie/app/modules/home/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController controller;

  @override
  void initState() {
    controller = context.read<HomeController>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeController, HomeState>(
      listener: (context, state) {
        if (state.status == HomeStatus.success) {
          log('Usuário deslogado com sucesso');

          Navigator.of(context).pushNamed(RoutesUrl.login);
        } else if (state.status == HomeStatus.error) {
          log('não foi possivel delogar o usuário');
        }
      },
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'home',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                icon: const Icon(FeatherIcons.logOut),
                onPressed: () => controller.singOut(),
              ),
            ]),
        body: Center(
          child: ElevatedButton(
            child: const Text('Ir para filmes'),
            onPressed: () => Navigator.of(context).pushNamed(RoutesUrl.movies),
          ),
        ),
      ),
    );
  }
}
