import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_service.dart';
import 'transaction_scheduled.dart';

part 'transactions_scheduled.freezed.dart';

@freezed
class TransactionsScheduled with _$TransactionsScheduled {
  factory TransactionsScheduled(List<TransactionScheduled> transactionScheduled) = _TransactionsScheduled;
  factory TransactionsScheduled.restore() => DomainService.getTransactionsScheduled();

  Iterable<TransactionScheduled> map<TransactionScheduled>(
          TransactionScheduled Function(MapEntry<int, TransactionScheduled> e) toElement) =>
      map((e) => toElement(e));
}
