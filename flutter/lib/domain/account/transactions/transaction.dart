import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'transaction_at.dart';
import 'transaction_id.dart';
import 'transaction_title.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const Transaction._();
  const factory Transaction(
      {@TransactionIdConverter() required TransactionId id,
      @TransactionTitleConverter() required TransactionTitle title,
      required bool calcAuto,
      @TransactionAtConverter() required TransactionAt transactionAt,
      required bool isCalced,
      required int amount}) = _Transaction;

  factory Transaction.scheduled({required DateTime date, required int amount}) => Transaction(
      id: TransactionId.create(),
      title: TransactionTitle.create(),
      calcAuto: false,
      transactionAt: TransactionAt(date),
      isCalced: false,
      amount: amount);

  factory Transaction.calced({required DateTime date, required int amount}) => Transaction(
      id: TransactionId.create(),
      title: TransactionTitle.create(),
      calcAuto: false,
      transactionAt: TransactionAt.createAt(date),
      isCalced: true,
      amount: amount);

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  String get info =>
      '${transactionAt.formattedYearMonthDay}に${NumberFormat('#,###').format(amount.abs())}円を${amount < 0 ? '出金' : '入金'}する予定です。';

  Transaction changeTitle(String newTitle) => copyWith.title(value: newTitle);
  Transaction changeAmount(int newAmount) => copyWith(amount: newAmount);
  Transaction toggleCalcAuto() => copyWith(calcAuto: !calcAuto);
  Transaction updateTransactionAt(DateTime newTransactionAt) => copyWith.transactionAt(value: newTransactionAt);
}

class TransactionConverter implements JsonConverter<Transaction, Map<String, dynamic>> {
  const TransactionConverter();

  @override
  Transaction fromJson(Map<String, dynamic> json) => Transaction.fromJson(json);

  @override
  Map<String, dynamic> toJson(Transaction object) => object.toJson();
}
