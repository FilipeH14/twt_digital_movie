// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:twt_digital_movie/app/core/network/local_storage.dart';

import 'package:twt_digital_movie/app/models/user.dart';
import 'package:twt_digital_movie/app/services/auth/auth_service.dart';

part 'register_state.dart';

class RegisterController extends Cubit<RegisterState> {
  final AuthService _authService;

  final _localStorage = LocalStorage();

  RegisterController({required AuthService authService})
      : _authService = authService,
        super(const RegisterState.initial());

  Future<void> register(User user) async {
    var userRegister = await _authService.register(user);

    log('${userRegister.name}');

    _localStorage.saveStorageData(key: 'key', data: user.token!);

  }
}
