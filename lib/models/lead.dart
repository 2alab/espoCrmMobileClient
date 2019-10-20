import 'package:json_annotation/json_annotation.dart';

part 'lead.g.dart';

@JsonSerializable()
class Lead {
  String firstName;
  String surName;

  Lead(this.firstName, this.surName);

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);

  Map<String, dynamic> toJson() => _$LeadToJson(this);
}
