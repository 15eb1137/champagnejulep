import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_service.dart';
import 'transaction.dart';

part 'transactions.freezed.dart';

@freezed
class Transactions with _$Transactions {
  factory Transactions(List<Transaction> children) = _Transactions;
  factory Transactions.restore() => DomainService.getTransactions();

  Iterable<Transaction> map<Transaction>(Transaction Function(Transaction e) toElement) =>
      children.map<Transaction>((e) => toElement(e as Transaction));

  void forEach(void Function(MapEntry<int, Transaction>) action) => children.asMap().entries.forEach(action);
}
