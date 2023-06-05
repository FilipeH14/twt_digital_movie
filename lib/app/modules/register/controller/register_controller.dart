// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:twt_digital_movie/app/models/user.dart';
import 'package:twt_digital_movie/app/services/auth/auth_service.dart';

part 'register_state.dart';

class RegisterController extends Cubit<RegisterState> {
  final AuthService _authService;

  RegisterController({required AuthService authService})
      : _authService = authService,
        super(const RegisterState.initial());

  Future<void> register(User user) async {
    try {
      await _authService.register(user);

      emit(state.copyWith(status: RegisterStatus.success));
    } on Exception {
      emit(state.copyWith(status: RegisterStatus.error));
      log('Erro ao registrar usuário');
    }
  }
}
