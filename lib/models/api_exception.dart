class ApiResponseException implements Exception {
  final dynamic message;
  ApiResponseException([this.message]);
  @override
  String toString() => message.toString();
}
