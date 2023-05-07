import 'package:mybookstore/app/core/exceptions/base_exception.exception.dart';

class BadRequestException extends BaseException {
  BadRequestException(String message) : super(message);
}
