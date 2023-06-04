// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'login_controller.dart';

enum LoginStatus { initial, success, error }

class LoginState {
  final LoginStatus status;

  const LoginState({
    required this.status,
  });

  const LoginState.initial() : status = LoginStatus.initial;

  LoginState copyWith({
    LoginStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }
}
