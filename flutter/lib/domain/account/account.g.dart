// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: const AccountIdConverter().fromJson(json['id'] as String),
      name: const AccountNameConverter().fromJson(json['name'] as String),
      transactions: const TransactionsConverter()
          .fromJson(json['transactions'] as List<Map<String, dynamic>>),
      ownerId: const UserIdConverter().fromJson(json['ownerId'] as String),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': const AccountIdConverter().toJson(instance.id),
      'name': const AccountNameConverter().toJson(instance.name),
      'transactions':
          const TransactionsConverter().toJson(instance.transactions),
      'ownerId': const UserIdConverter().toJson(instance.ownerId),
    };
