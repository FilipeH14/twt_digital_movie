const String baseUrl = 'https://parseapi.back4app.com/parse/functions';

abstract class Endpoints {
  static const String signin = '$baseUrl/login';
  static const String signup = '$baseUrl/register';
  static const String validateToken = '$baseUrl/validate-token';
}
