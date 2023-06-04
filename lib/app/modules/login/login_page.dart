import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twt_digital_movie/app/core/ui/widgets/twt_button.dart';
import 'package:twt_digital_movie/app/core/ui/widgets/twt_input.dart';
import 'package:twt_digital_movie/app/modules/login/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginController controller;

  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void initState() {
    controller = context.read<LoginController>();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constrains.maxHeight,
              minWidth: constrains.maxWidth,
            ),
            child: IntrinsicHeight(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TwtInput(
                          label: 'E-mail',
                          controller: _email,
                        ),
                        const SizedBox(height: 20),
                        TwtInput(
                          label: 'Senha',
                          controller: _password,
                        ),
                        const SizedBox(height: 20),
                        const TwtButton(text: 'Entrar'),
                        const SizedBox(height: 20),
                        GestureDetector(
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Não é cadastrado?  ',
                                ),
                                TextSpan(
                                  text: 'Cadastre-se aqui',
                                ),
                              ],
                            ),
                          ),
                          onTap: () =>
                              Navigator.of(context).pushNamed('/register'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
