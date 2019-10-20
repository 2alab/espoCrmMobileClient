// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lead _$LeadFromJson(Map<String, dynamic> json) {
  return Lead(
      json['id'] as String,
      json['name'] as String,
      json['firstName'] as String,
      json['lastName'] as String,
      json['status'] as String,
      json['emailAddress'] as String,
      json['phoneNumber'] as String,
      json['createdAt'] as String);
}

Map<String, dynamic> _$LeadToJson(Lead instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'status': instance.status,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'createdAt': instance.createdAt
    };

LeadsResponse _$LeadsResponseFromJson(Map<String, dynamic> json) {
  return LeadsResponse(
      json['total'] as int,
      (json['list'] as List)
          ?.map((e) =>
              e == null ? null : Lead.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$LeadsResponseToJson(LeadsResponse instance) =>
    <String, dynamic>{'total': instance.total, 'list': instance.list};
