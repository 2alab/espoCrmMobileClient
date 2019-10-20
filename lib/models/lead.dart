import 'package:json_annotation/json_annotation.dart';

part 'lead.g.dart';

@JsonSerializable()
class Lead {
  String id;
  String name;
  String firstName;
  String lastName;
  String status;
  String emailAddress;
  String phoneNumber;
  String createdAt;

  Lead(this.id, this.name, this.firstName, this.lastName, this.status,
      this.emailAddress, this.phoneNumber, this.createdAt);

  factory Lead.fromJson(Map<String, dynamic> json) => _$LeadFromJson(json);

  Map<String, dynamic> toJson() => _$LeadToJson(this);
}

@JsonSerializable()
class LeadsResponse {
  int total;
  List<Lead> list;

  LeadsResponse(this.total, this.list);

  factory LeadsResponse.fromJson(Map<String, dynamic> json) =>
      _$LeadsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeadsResponseToJson(this);
}
