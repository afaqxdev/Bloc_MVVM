// ignore_for_file: prefer_typing_uninitialized_variables

class AppException implements Exception {
  final message;
  final prefix;
  AppException([this.message, this.prefix]);

  @override
  String toString() {
    return '$prefix: $message';
  }
}

class NoInternetException extends AppException {
  NoInternetException([String? message])
      : super(message, 'No internet connection');
}

class UnAuthorisedException extends AppException {
  UnAuthorisedException([String? message])
      : super(message, 'Unauthorized request');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message])
      : super(message, 'Request timeout');
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error during communication');
}
