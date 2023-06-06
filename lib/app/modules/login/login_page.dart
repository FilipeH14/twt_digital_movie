import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/core/constants/routes_url.dart';
import 'package:twt_digital_movie/app/core/ui/widgets/twt_button.dart';
import 'package:twt_digital_movie/app/core/ui/widgets/twt_input.dart';
import 'package:twt_digital_movie/app/modules/login/controller/login_controller.dart';
import 'package:validatorless/validatorless.dart';

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
    return BlocListener<LoginController, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.success) {
          log('Login efetuado com sucesso');

          Navigator.of(context).pushNamed(RoutesUrl.home);
        } else if (state.status == LoginStatus.error) {
          log('Falha ao realizar login !!');
        }
      },
      child: Scaffold(
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
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/timwetechLogo.png'),
                          const SizedBox(height: 20),
                          TwtInput(
                            label: 'E-mail',
                            controller: _email,
                            isObscure: false,
                            validator: Validatorless.multiple([
                              Validatorless.required(
                                  'Digite um campo de email'),
                              Validatorless.email('Digite um email válido'),
                            ]),
                          ),
                          const SizedBox(height: 20),
                          TwtInput(
                            label: 'Senha',
                            controller: _password,
                            isObscure: true,
                            validator: Validatorless.multiple([
                              Validatorless.required(
                                  'Digite um campo de  senha'),
                              Validatorless.min(6,
                                  'O campode senha deve conter no mínimo 6 caracteres')
                            ]),
                          ),
                          const SizedBox(height: 20),
                          TwtButton(
                            text: 'Entrar',
                            action: () {
                              final valid =
                                  _formKey.currentState?.validate() ?? false;

                              if (valid) {
                                controller.login(_email.text, _password.text);
                              }
                            },
                          ),
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
                            onTap: () => Navigator.of(context)
                                .pushNamed(RoutesUrl.register),
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
      ),
    );
  }
}
