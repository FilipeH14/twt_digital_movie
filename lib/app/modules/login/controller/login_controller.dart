import 'package:bloc/bloc.dart';

part 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  LoginController() : super(const LoginState.initial());
}
