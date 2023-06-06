import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:twt_digital_movie/app/core/constants/token_keys.dart';
import 'package:twt_digital_movie/app/core/network/local_storage.dart';
import 'package:twt_digital_movie/app/services/auth/auth_service.dart';

part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthService _authService;

  final _localStorage = LocalStorage();

  LoginController({required AuthService authService})
      : _authService = authService,
        super(const LoginState.initial());

  Future<void> login(String email, String password) async {
    try {
  final user = await _authService.login(email, password);
  
  await _localStorage.saveStorageData(
      key: TokenKeys.userToken, data: user.sessionToken!);
  
  emit(state.copyWith(status: LoginStatus.success));
} on Exception catch (e, s) {
  log('Erro ao entrar com o usuário', error: e, stackTrace: s);
  emit(state.copyWith(status: LoginStatus.error));
}
  }
}
