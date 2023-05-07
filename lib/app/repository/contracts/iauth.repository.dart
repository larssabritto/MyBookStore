import 'package:mybookstore/app/dtos/auth/login/login.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/login/login.response.dto.dart';
import 'package:mybookstore/app/dtos/auth/validate_token/validate_token.request.dto.dart';
import 'package:mybookstore/app/dtos/auth/validate_token/validate_token.response.dto.dart';

abstract class IAuthRepository {
  Future<LoginResponseDTO> login(LoginRequestDTO loginDto);
  Future<ValidateTokenResponseDTO> validateToken(ValidateTokenRequestDTO validateTokenRequest);
}