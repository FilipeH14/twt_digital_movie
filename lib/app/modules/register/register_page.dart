import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twt_digital_movie/app/core/ui/widgets/twt_button.dart';
import 'package:twt_digital_movie/app/core/ui/widgets/twt_input.dart';
import 'package:twt_digital_movie/app/models/user.dart';
import 'package:twt_digital_movie/app/modules/register/controller/register_controller.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final RegisterController controller;

  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();

  @override
  void initState() {
    controller = context.read<RegisterController>();

    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterController, RegisterState>(
      listener: (context, state) {
        if (state.status == RegisterStatus.success) {
          log('usuário Cadastrado com sucesso');
          Navigator.of(context).pop();
        } else if (state.status == RegisterStatus.error) {
          log('Erro ao cadastrar usuário');
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
                          TwtInput(
                            label: 'Nome',
                            controller: _name,
                            isObscure: false,
                            validator:
                                Validatorless.required('Gigite seu nome'),
                          ),
                          const SizedBox(height: 20),
                          TwtButton(
                            text: 'Cadastrar',
                            action: () {
                              final valid =
                                  _formKey.currentState?.validate() ?? false;

                              if (valid) {
                                var user = User(
                                  email: _email.text,
                                  password: _password.text,
                                  name: _name.text,
                                );

                                controller.register(user);
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            child: const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Ja é cadastrado?  ',
                                  ),
                                  TextSpan(
                                    text: 'Entrar aqui',
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => Navigator.of(context).pop(),
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
