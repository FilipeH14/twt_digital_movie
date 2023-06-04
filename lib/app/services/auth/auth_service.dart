import 'package:twt_digital_movie/app/models/user.dart';

abstract class AuthService {
  Future<User> login(String email, String password);
  Future<User> register(User user);
}
