import 'package:mybookstore/app/core/exceptions/base_exception.exception.dart';

class UnauthorizedException extends BaseException {
  UnauthorizedException(String message) : super(message);
}
