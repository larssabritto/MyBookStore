
import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/contracts/rest_entity.dart';
import 'package:mybookstore/app/core/http/interceptors/error.interceptor.dart';
import 'package:mybookstore/app/core/http/interceptors/request.interceptors.dart';
import 'package:mybookstore/app/core/http/interceptors/response.interceptor.dart';

class HttpClient {
  late Dio _dio;

  HttpClient() {
    _dio = Dio();

    _dio.options.baseUrl = "https://api-flutter-prova.hml.sesisenai.org.br/v1";

    _dio.interceptors.add(
      InterceptorsWrapper(
          onRequest: (RequestOptions requestOptions,RequestInterceptorHandler handler) => 
            RequestInterceptor.requestHttpInterceptor(requestOptions, handler),
          onResponse: (Response response, ResponseInterceptorHandler handler) =>
            ResponseInterceptor.interceptor(response, handler),
          onError: (DioError error, ErrorInterceptorHandler handler) => 
            ErrorInterceptor.interceptor(error, handler)
      )
    );
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    Response response = await _dio.get(path, queryParameters: params, options: options);

    return response;
  }

  Future<Response> post(String path, RestEntity body, {Options? options}) async {
    Response response = await _dio.post(path, data: body.toJson(), options: options);

    return response;
  }

  Future<Response> put(String path, RestEntity body, {Options? options}) async {
    Response response = await _dio.put(path, data: body.toJson(), options: options);

    return response;
  }

  Future<Response> delete(String path, {Options? options}) async {
    Response response = await _dio.delete(path, options: options);

    return response;
  }
}
