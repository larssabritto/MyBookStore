import 'package:mybookstore/app/core/exceptions/base_exception.exception.dart';

class ForbiddenException extends BaseException {
  ForbiddenException(String message) : super(message);
}
