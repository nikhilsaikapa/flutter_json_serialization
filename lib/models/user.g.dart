// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..userName = json['username'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String
    ..website = json['website'] as String
    ..address = json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>)
    ..company = json['company'] == null
        ? null
        : Company.fromJson(json['company'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address?.toJson(),
      'company': instance.company?.toJson(),
    };
