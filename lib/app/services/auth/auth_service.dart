import 'package:twt_digital_movie/app/models/user.dart';

abstract class AuthService {
  Future<User> signIn(String email, String password);
  Future<User> signUp(User user);
}
