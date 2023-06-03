import 'package:twt_digital_movie/app/models/user.dart';
import 'package:twt_digital_movie/app/repositories/auth/auth_repository.dart';

import 'package:twt_digital_movie/app/services/auth/auth_service.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<User> signIn(String email, String password) =>
      _authRepository.signIn(email, password);

  @override
  Future<User> signUp(User user) => _authRepository.signUp(user);
}
