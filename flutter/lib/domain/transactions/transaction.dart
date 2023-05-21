import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account_id.dart';
import 'transaction_at.dart';
import 'transaction_id.dart';
import 'transaction_title.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const Transaction._();
  const factory Transaction(
      {required TransactionId id,
      required AccountId accountId,
      required TransactionTitle title,
      required bool calcAuto,
      required TransactionAt transactionAt,
      required bool isCalced,
      required int amount}) = _Transaction;

  factory Transaction.scheduled({required AccountId accountId}) => Transaction(
      id: TransactionId.create(),
      accountId: accountId,
      title: TransactionTitle.create(),
      calcAuto: false,
      transactionAt: TransactionAt.create(),
      isCalced: false,
      amount: 0);

  factory Transaction.calced({required AccountId accountId, required DateTime date}) => Transaction(
      id: TransactionId.create(),
      accountId: accountId,
      title: TransactionTitle.create(),
      calcAuto: false,
      transactionAt: TransactionAt.createAt(date),
      isCalced: true,
      amount: 0);

  String get amountInfo => '${transactionAt.formattedYearMonthDay}に${amount.abs()}円を${amount < 0 ? '出金' : '入金'}する予定です。';

  Transaction changeTitle(String newTitle) => copyWith.title(value: newTitle);
  Transaction changeAmount(int newAmount) => copyWith(amount: newAmount);
  Transaction toggleCalcAuto() => copyWith(calcAuto: !calcAuto);
  Transaction updateTransactionAt(DateTime newTransactionAt) => copyWith.transactionAt(value: newTransactionAt);
}
