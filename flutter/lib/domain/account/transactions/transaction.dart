import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'transaction_at.dart';
import 'transaction_id.dart';
import 'transaction_title.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const Transaction._();
  const factory Transaction(
      {required TransactionId id,
      required TransactionTitle title,
      required bool calcAuto,
      required TransactionAt transactionAt,
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

  String get info =>
      '${transactionAt.formattedYearMonthDay}に${NumberFormat('#,###').format(amount.abs())}円を${amount < 0 ? '出金' : '入金'}する予定です。';

  Transaction changeTitle(String newTitle) => copyWith.title(value: newTitle);
  Transaction changeAmount(int newAmount) => copyWith(amount: newAmount);
  Transaction toggleCalcAuto() => copyWith(calcAuto: !calcAuto);
  Transaction updateTransactionAt(DateTime newTransactionAt) => copyWith.transactionAt(value: newTransactionAt);
}
