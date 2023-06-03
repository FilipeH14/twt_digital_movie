import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppModules extends StatelessWidget {
  final Widget application;

  const AppModules({
    required this.application,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [],
    );
  }
}
