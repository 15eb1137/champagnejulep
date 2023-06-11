// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: const UserIdConverter().fromJson(json['id'] as String),
      premium: const UserPremiumConverter()
          .fromJson(json['premium'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': const UserIdConverter().toJson(instance.id),
      'premium': const UserPremiumConverter().toJson(instance.premium),
    };
