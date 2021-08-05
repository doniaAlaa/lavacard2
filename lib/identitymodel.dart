// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'package:get/get.dart';

Identity welcomeFromJson(String str) => Identity.fromJson(json.decode(str));

String welcomeToJson(Identity data) => json.encode(data.toJson());

class Identity {
  Identity({
    required this.name,
    required this.type,
    required this.jobTiltle,
  });

  String name;
  String type;
  String jobTiltle;

  factory Identity.fromJson(Map<String, dynamic> json) => Identity(

    name: json["name"],
    type: json["type"],
    jobTiltle: json["Job Tiltle"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": type,
    "Job Tiltle": jobTiltle,
  };
}
