part of 'register_controller.dart';

enum RegisterStatus { initial, success, error }

class RegisterState {
  final RegisterStatus status;

  const RegisterState({
    required this.status,
  });

  const RegisterState.initial() : status = RegisterStatus.initial;

  RegisterState copyWith({
    RegisterStatus? status,
  }) {
    return RegisterState(
      status: status ?? this.status,
    );
  }
}
