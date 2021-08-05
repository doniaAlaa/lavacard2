class ApiResult<TData> {
  final TData? outputModel;
  final bool isSuccess;
  final ErrorMessage? errorMessage;

  ApiResult({required this.isSuccess, this.outputModel, this.errorMessage});
}

class ErrorMessage {
  final String? message;
  final bool isKey;

  ErrorMessage({required this.message, this.isKey = false});
}
