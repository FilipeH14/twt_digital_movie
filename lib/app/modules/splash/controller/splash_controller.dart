import 'package:bloc/bloc.dart';
import 'package:twt_digital_movie/app/core/constants/token_keys.dart';
import 'package:twt_digital_movie/app/core/network/local_storage.dart';
import 'package:twt_digital_movie/app/modules/splash/controller/splash_state.dart';
import 'package:twt_digital_movie/app/services/auth/auth_service.dart';

class SplashController extends Cubit<SplashState> {
  final AuthService _authService;

  final _localStorage = LocalStorage();

  SplashController({required AuthService authService})
      : _authService = authService,
        super(SplashState.initial());

  Future<void> validateUser() async {
    var hasToken = await _localStorage.getStorageData(key: TokenKeys.userToken);

    if (hasToken == null) {
      emit(state.copyWith(status: SplashStatus.error));
      return;
    }

    var user = await _authService.validateToken(hasToken);

    await _localStorage.saveStorageData(
        key: TokenKeys.userToken, data: user.sessionToken!);

    emit(state.copyWith(status: SplashStatus.success));
  }
}
