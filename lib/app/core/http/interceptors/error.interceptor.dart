
import 'package:dio/dio.dart';

class ErrorInterceptor {
  static void interceptor(DioError error, ErrorInterceptorHandler handler) {
    handler.next(error);
  }
}
