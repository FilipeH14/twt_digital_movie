import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class BaseRestMovies {
  Future<Map> movieDioRequest({
    required String url,
    required String method,
    Map? headers,
    Map? body,
  }) async {
    Dio dio = Dio();

    final requestHeaders = headers?.cast<String, String>() ?? {}
      ..addAll({
        'content-type': 'application/json',
        'accept': 'application/json',
        'language': 'pt-br',
        'api_key': FirebaseRemoteConfig.instance.getString('api_token_moviedb'),
      });

    try {
      Response response = await dio.request(
        url,
        options: Options(
          headers: requestHeaders,
          method: method,
        ),
        data: body,
      );

      return response.data;
    } on DioError catch (e, s) {
      log('Dio Connection Error -->', error: e, stackTrace: s);
      return e.response?.data ?? {};
    } on Exception catch (e, s) {
      log('Error -->', error: e, stackTrace: s);
      return {};
    }
  }
}
