import 'package:mybookstore/app/core/exceptions/base_exception.exception.dart';

class InternalServerErrorException extends BaseException {
  InternalServerErrorException(String message) : super(message);
}
