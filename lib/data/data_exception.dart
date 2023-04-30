class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, "no internet");
  // Whenever InternetException is called it needs the message in string format
  // super method is used to pass value
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, "request time out");
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, "Internet Server Out");
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, "Invalid Url");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, "Unable to fetch data");
}