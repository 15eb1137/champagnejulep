// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: const TransactionIdConverter().fromJson(json['id'] as String),
      title:
          const TransactionTitleConverter().fromJson(json['title'] as String),
      calcAuto: json['calcAuto'] as bool,
      transactionAt: const TransactionAtConverter()
          .fromJson(json['transactionAt'] as DateTime),
      isCalced: json['isCalced'] as bool,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': const TransactionIdConverter().toJson(instance.id),
      'title': const TransactionTitleConverter().toJson(instance.title),
      'calcAuto': instance.calcAuto,
      'transactionAt':
          const TransactionAtConverter().toJson(instance.transactionAt),
      'isCalced': instance.isCalced,
      'amount': instance.amount,
    };
