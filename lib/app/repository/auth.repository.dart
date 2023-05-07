import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/http/handlers/error_handler.dart';
import 'package:mybookstore/app/core/services/auth.service.dart';
import 'package:mybookstore/app/dtos/auth/login/login.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/login/login.response.dto.dart';
import 'package:mybookstore/app/dtos/auth/validate_token/validate_token.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/validate_token/validate_token.response.dto.dart';
import 'package:mybookstore/app/repository/contracts/iauth.repository.dart';

class AuthRepository implements IAuthRepository {

  final AuthService _authService = AuthService();

  @override
  Future<LoginResponseDTO> login(LoginRequestDTO loginDto) async {
    try {
      Response response = await _authService.login(loginDto);
      return LoginResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }

  @override
  Future<ValidateTokenResponseDTO> validateToken(ValidateTokenRequestDTO validateTokenRequest) async {
    try {
      Response response = await _authService.validateToken(validateTokenRequest);
      return ValidateTokenResponseDTO.fromJson(response.data);
    } catch(exception) {
      return ErrorHandler.handleDioError(exception);
    }
  }
  
}