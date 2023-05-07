class BaseException implements Exception {
  final String message;

  BaseException(this.message);

  @override
  String toString() {
    Object? exceptionMessage = message;
    return "${(runtimeType).toString()}: $exceptionMessage";
  }
}
