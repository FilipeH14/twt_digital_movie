// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_controller.dart';

enum HomeStatus { initial, success, error }

class HomeState {
  final HomeStatus status;

  HomeState({
    required this.status
  });

  const HomeState.initial() : status = HomeStatus.initial;

  HomeState copyWith({
    HomeStatus? status,
  }) {
    return HomeState(
      status: status ?? this.status,
    );
  }
}
