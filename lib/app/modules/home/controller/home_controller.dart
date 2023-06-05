import 'package:bloc/bloc.dart';
import 'package:twt_digital_movie/app/core/constants/token_keys.dart';
import 'package:twt_digital_movie/app/core/network/local_storage.dart';

part 'home_state.dart';

class HomeController extends Cubit<HomeState> {
  final _localStorage = LocalStorage();

  HomeController() : super(const HomeState.initial());

  Future<void> singOut() async {
    await _localStorage.removeStorageData(key: TokenKeys.userToken);

    emit(state.copyWith(status: HomeStatus.success));
  }
}
