import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction.dart';

part 'transactions.freezed.dart';

@freezed
class Transactions with _$Transactions {
  const Transactions._();
  factory Transactions(List<Transaction> children) = _Transactions;

  Iterable<Transaction> map<Transaction>(Transaction Function(Transaction e) toElement) =>
      children.map<Transaction>((e) => toElement(e as Transaction));
  Iterable<Transaction> where(bool Function(Transaction element) test) => children.where(test);
  Transaction firstWhere(bool Function(Transaction) test, {Transaction Function()? orElse}) =>
      children.firstWhere(test, orElse: orElse);
  Transaction get last => children.last;
  int get length => children.length;

  int simulate() => children.fold(0, (previousValue, element) => previousValue + element.amount);

  Transactions changeTransactionTitle(Transaction target, String newTitle) => Transactions(children
      .map((transaction) =>
          transaction == target ? transaction.copyWith.title(value: newTitle).copyWith(isCalced: true) : transaction)
      .toList());
  Transactions changeTransactionAmount(Transaction target, int newAmount) => Transactions(children
      .map((transaction) =>
          transaction == target ? transaction.copyWith(amount: newAmount, isCalced: true) : transaction)
      .toList());
}
