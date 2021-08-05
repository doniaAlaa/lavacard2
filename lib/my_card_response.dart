import 'package:json_annotation/json_annotation.dart';
import 'package:lavacard/ApiResponse.dart';

part 'my_card_response.g.dart';

@JsonSerializable()
class CardListResponse extends ApiResponse<CardListOutputModel?> {
  CardListResponse() : super.empty();

  factory CardListResponse.fromJson(Map<String, dynamic> json) => _$CardListResponseFromJson(json);
}

@JsonSerializable()
class CardListOutputModel {
  final List<CardOutputModel> vacations;

  CardListOutputModel(this.vacations);

  factory CardListOutputModel.fromJson(Map<String, dynamic> json) => _$CardListOutputModelFromJson(json);
}

@JsonSerializable()
class CardOutputModel {
  final String? id;
  final String? name;
  final String? email;
  final String? address;
  final String? jobTitle;
  final String? company;
  final String? mobileNumber;
  final String? photo;

//contructor
  CardOutputModel(
      this.id,
      this.name,
      this.email,
      this.address,
      this.jobTitle,
      this.company,
      this.mobileNumber,
      this.photo,

      );

  factory CardOutputModel.fromJson(Map<String, dynamic> json) => _$CardOutputModelFromJson(json);
}
