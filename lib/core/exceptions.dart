class ApiDataException implements Exception {
  final String message;

  const ApiDataException([String? message])
      : message = message ?? "Something went wrong!";

  @override
  String toString() => message;
}
