// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lead _$LeadFromJson(Map<String, dynamic> json) {
  return Lead(json['firstName'] as String, json['surName'] as String);
}

Map<String, dynamic> _$LeadToJson(Lead instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'surName': instance.surName
    };
