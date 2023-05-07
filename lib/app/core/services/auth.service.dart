import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/http/http_client.dart';
import 'package:mybookstore/app/dtos/auth/login/login.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/validate_token/validate_token.request.dto.dart';


class AuthService {
  final HttpClient _httpClient = HttpClient();

  Future login(LoginRequestDTO loginDto) async {
    return await _httpClient.post(
      "/auth",
      loginDto,
      options: Options(headers: {"ignoreAuth": true}),
    );
  }

  Future validateToken(ValidateTokenRequestDTO validateTokenRequest) async {
    return await _httpClient.post(
      "/auth/validateToken",
      validateTokenRequest,
    );
  }
}
