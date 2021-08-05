// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardListResponse _$CardListResponseFromJson(Map<String, dynamic> json) {
  return CardListResponse()
    ..data = json['data'] == null
        ? null
        : CardListOutputModel.fromJson(json['data'] as Map<String, dynamic>)
    ..developerMessage = json['developerMessage'] as String?
    ..errorMessage = json['errorMessage'] as String?
    ..message = json['message'] as String?
    ..messageCode = json['messageCode'] as String?
    ..validationErrors = (json['validationErrors'] as List<dynamic>?)
        ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CardListResponseToJson(CardListResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'developerMessage': instance.developerMessage,
      'errorMessage': instance.errorMessage,
      'message': instance.message,
      'messageCode': instance.messageCode,
      'validationErrors': instance.validationErrors,
    };

CardListOutputModel _$CardListOutputModelFromJson(Map<String, dynamic> json) {
  return CardListOutputModel(
    (json['vacations'] as List<dynamic>)
        .map((e) => CardOutputModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CardListOutputModelToJson(
        CardListOutputModel instance) =>
    <String, dynamic>{
      'vacations': instance.vacations,
    };

CardOutputModel _$CardOutputModelFromJson(Map<String, dynamic> json) {
  return CardOutputModel(
    json['id'] as String?,
    json['name'] as String?,
    json['email'] as String?,
    json['address'] as String?,
    json['jobTitle'] as String?,
    json['company'] as String?,
    json['mobileNumber'] as String?,
    json['photo'] as String?,
  );
}

Map<String, dynamic> _$CardOutputModelToJson(CardOutputModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'jobTitle': instance.jobTitle,
      'company': instance.company,
      'mobileNumber': instance.mobileNumber,
      'photo': instance.photo,
    };
