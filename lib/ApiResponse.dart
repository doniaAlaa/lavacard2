import 'package:json_annotation/json_annotation.dart';

part 'ApiResponse.g.dart';

class ApiResponse<TData> {
  TData? data;
  String? developerMessage;
  String? errorMessage;
  String? message;
  String? messageCode;
  List<ValidationError>? validationErrors;

  ApiResponse.empty();

  ApiResponse({
    required this.data,
    required this.developerMessage,
    required this.errorMessage,
    required this.message,
    required this.messageCode,
    required this.validationErrors,
  });

  String validationErrorsMessage() {
    return validationErrors!.map((v) => v.message).join(', ');
  }
}

@JsonSerializable()
class ValidationError {
  final String? code;
  final String? message;

  ValidationError({required this.code, required this.message});

  factory ValidationError.fromJson(Map<String, dynamic> json) => _$ValidationErrorFromJson(json);
}

@JsonSerializable()
class NoDataResponse extends ApiResponse<Object?> {
  NoDataResponse() : super.empty();

  factory NoDataResponse.fromJson(Map<String, dynamic> json) => _$NoDataResponseFromJson(json);
}
