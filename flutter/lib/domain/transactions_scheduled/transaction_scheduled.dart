import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../accounts/account_id.dart';
import '../domain_service.dart';

part 'transaction_scheduled.freezed.dart';

@freezed
class TransactionScheduled with _$TransactionScheduled {
  TransactionScheduled._() {
    DomainService.saveTransactionScheduled(this);
  }

  const factory TransactionScheduled(
      {required AccountId accountId,
      required String title,
      required bool calcAuto,
      required DateTime transactionAt,
      required int value}) = _TransactionSheduled;

  factory TransactionScheduled.create({required AccountId accountId}) => TransactionScheduled(
      accountId: accountId, title: '新しい入出金予定', calcAuto: false, transactionAt: DateTime.now(), value: 0);

  String get valueInfo =>
      '${DateFormat.yMMMMd().format(transactionAt)}に${value.abs()}円を${value < 0 ? '出金' : '入金'}する予定です。';

  TransactionScheduled updateTitle(String newTitle) => copyWith(title: newTitle);
  TransactionScheduled toggleCalcAuto() => copyWith(calcAuto: !calcAuto);
  TransactionScheduled updateTransactionAt(DateTime newTransactionAt) => copyWith(transactionAt: newTransactionAt);
  TransactionScheduled updateValue(int newValue) => copyWith(value: newValue);
}
