import 'package:twt_digital_movie/app/models/user.dart';
import 'package:twt_digital_movie/app/repositories/auth/auth_repository.dart';

import 'package:twt_digital_movie/app/services/auth/auth_service.dart';

class AuthServiceImpl implements AuthService {
  final AuthRepository _authRepository;

  AuthServiceImpl({required AuthRepository authRepository})
      : _authRepository = authRepository;

  @override
  Future<User> login(String email, String password) =>
      _authRepository.login(email, password);

  @override
  Future<User> register(User user) => _authRepository.register(user);
}
