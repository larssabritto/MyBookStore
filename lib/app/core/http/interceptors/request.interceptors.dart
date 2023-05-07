import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RequestInterceptor {
  static dynamic requestHttpInterceptor(RequestOptions options,RequestInterceptorHandler handler) async {
    if (options.headers.containsKey('ignoreAuth')) {
      return handler.next(options);
    }

    SharedPreferences preferences = await SharedPreferences.getInstance();

    var token = preferences.get('token');

    options.headers.putIfAbsent('Authorization', () => 'Bearer $token');
    return handler.next(options);
  }
}
