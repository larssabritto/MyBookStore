import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mybookstore/app/core/exceptions/bad_request.exception.dart';
import 'package:mybookstore/app/core/exceptions/forbidden.exception.dart';
import 'package:mybookstore/app/core/exceptions/internal_server_error.exception.dart';
import 'package:mybookstore/app/core/exceptions/unauthorized.exception.dart';

class ErrorHandler {

  static dynamic handleDioError(Object exception) {
    DioError dioError = exception as DioError;
    switch(dioError.response!.statusCode) {
      case HttpStatus.unauthorized:
        throw UnauthorizedException("Usuário e/ou Senha Inválidos");
      case HttpStatus.forbidden:
        throw ForbiddenException("Seu usuário não tem acesso a essa operação");
      case HttpStatus.badRequest:
        throw BadRequestException("Erro no processo da requisição");
      case HttpStatus.internalServerError:
        throw InternalServerErrorException("Erro interno do servidor");
    }
  }
}