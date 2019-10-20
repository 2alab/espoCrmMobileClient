// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(json['name'] as String, json['emailAddress'] as String,
      json['phoneNumber'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber
    };
