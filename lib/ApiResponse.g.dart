// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) {
  return ValidationError(
    code: json['code'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$ValidationErrorToJson(ValidationError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

NoDataResponse _$NoDataResponseFromJson(Map<String, dynamic> json) {
  return NoDataResponse()
    ..data = json['data']
    ..developerMessage = json['developerMessage'] as String?
    ..errorMessage = json['errorMessage'] as String?
    ..message = json['message'] as String?
    ..messageCode = json['messageCode'] as String?
    ..validationErrors = (json['validationErrors'] as List<dynamic>?)
        ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$NoDataResponseToJson(NoDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'developerMessage': instance.developerMessage,
      'errorMessage': instance.errorMessage,
      'message': instance.message,
      'messageCode': instance.messageCode,
      'validationErrors': instance.validationErrors,
    };
