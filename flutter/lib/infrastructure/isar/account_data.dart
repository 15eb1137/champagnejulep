import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'fast_hash.dart';

part 'account_data.g.dart';

@collection
class AccountData {
  AccountData({required this.id, required this.name, required this.transactions, required this.ownerId});
  factory AccountData.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('id')) throw Exception('id is required for account data');
    if (!json.containsKey('name')) throw Exception('name is required for account data');
    if (!json.containsKey('transactions')) throw Exception('transactions is required for account data');
    if (!json.containsKey('ownerId')) throw Exception('ownerId is required for account data');
    final transactions = json['transactions'] as List<Map<String, dynamic>>;
    return AccountData(
        id: json['id'] as String,
        name: json['name'] as String,
        transactions: transactions.map((transaction) => TransactionData.fromJson(transaction)).toList(),
        ownerId: json['ownerId'] as String);
  }
  final String id;
  Id get isarId => fastHash(id);
  final String name;
  final List<TransactionData> transactions;
  final String ownerId;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'transactions': transactions.map((transaction) => transaction.toJson()).toList(),
        'ownerId': ownerId.toString()
      };
}

@embedded
class TransactionData {
  TransactionData({this.id, this.title, this.calcAuto, this.transactionAt, this.isCalced, this.amount})
  // : assert(id != null),
  //   assert(title != null),
  //   assert(calcAuto != null),
  //   assert(transactionAt != null),
  //   assert(isCalced != null),
  //   assert(amount != null)
  ;
  factory TransactionData.fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('id')) throw Exception('id is required for transaction data');
    if (!json.containsKey('title')) throw Exception('title is required for transaction data');
    if (!json.containsKey('calcAuto')) throw Exception('calcAuto is required for transaction data');
    if (!json.containsKey('transactionAt')) throw Exception('transactionAt is required for transaction data');
    if (!json.containsKey('isCalced')) throw Exception('isCalced is required for transaction data');
    if (!json.containsKey('amount')) throw Exception('amount is required for transaction data');
    return TransactionData(
        id: json['id'] as String,
        title: json['title'] as String,
        calcAuto: json['calcAuto'] as bool,
        transactionAt: DateTime.parse(json['transactionAt'].toString()),
        isCalced: json['isCalced'] as bool,
        amount: json['amount'] as int);
  }
  String? id;
  String? title;
  bool? calcAuto;
  DateTime? transactionAt;
  bool? isCalced;
  int? amount;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'title': title.toString(),
        'calcAuto': calcAuto.toString(),
        'transactionAt': transactionAt.toString(),
        'isCalced': isCalced.toString(),
        'amount': amount.toString()
      };
}
