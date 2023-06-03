import 'package:twt_digital_movie/app/models/user.dart';

abstract class AuthRepository {
  Future<User> signIn(String email, String password);
  Future<User> signUp(User user);
}
