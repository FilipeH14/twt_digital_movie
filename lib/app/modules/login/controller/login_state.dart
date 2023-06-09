// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'login_controller.dart';

enum LoginStatus { initial, loading, success, error }

class LoginState extends Equatable {
  final LoginStatus status;

  const LoginState({
    required this.status,
  });

  const LoginState.initial() : status = LoginStatus.initial;

  @override
  List<Object?> get props => [status];
  
  LoginState copyWith({
    LoginStatus? status,
  }) {
    return LoginState(
      status: status ?? this.status,
    );
  }
  
}
