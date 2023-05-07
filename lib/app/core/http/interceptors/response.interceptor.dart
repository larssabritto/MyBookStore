import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResponseInterceptor {
  static void interceptor(Response response, ResponseInterceptorHandler handler) async {
    if(response.data is List) {
      handler.next(response);
    } else {
      if (response.data['token'] != null) {
        SharedPreferences preferences = await SharedPreferences.getInstance();

        preferences.setString('token', response.data['token']);
      }

      if (response.data['refreshToken'] != null) {
        SharedPreferences preferences = await SharedPreferences.getInstance();

        preferences.setString('token', response.data['refreshToken']);
      }

      handler.next(response);
    }
  }
}
