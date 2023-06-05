// ignore_for_file: public_member_api_docs, sort_constructors_first
enum SplashStatus { initial, success, error }

class SplashState {
  final SplashStatus status;

  SplashState({required this.status});

  SplashState.initial() : status = SplashStatus.initial;

  SplashState copyWith({
    SplashStatus? status,
  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }
}
