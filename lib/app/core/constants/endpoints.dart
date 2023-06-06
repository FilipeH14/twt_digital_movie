const String forAppBaseUrl = 'https://parseapi.back4app.com/parse/functions';
const String moviesBaseUrl = 'https://api.themoviedb.org/3';

abstract class ForAppEndpoints {
  static const String signin = '$forAppBaseUrl/login';
  static const String signup = '$forAppBaseUrl/register';
  static const String validateToken = '$forAppBaseUrl/validate-token';
}

abstract class MoviesEndpoints {
  static const String signin = '$moviesBaseUrl/genre/movie/list';
}
