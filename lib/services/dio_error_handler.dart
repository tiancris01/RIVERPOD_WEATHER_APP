import 'package:dio/dio.dart';

String dioErrorHandler(Response response) {
  final statusCode = response.statusCode;
  final statusMessage = response.statusMessage;

  final String errorMessage =
      'request failed\n\nStatus code:$statusCode\nReason: $statusMessage';
  return errorMessage;
}
