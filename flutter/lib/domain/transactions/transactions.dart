import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account_balance.dart';
import 'transaction.dart';

part 'transactions.freezed.dart';

@freezed
class Transactions with _$Transactions {
  const Transactions._();
  factory Transactions(List<Transaction> children) = _Transactions;

  Iterable<Transaction> map<Transaction>(Transaction Function(Transaction e) toElement) =>
      children.map<Transaction>((e) => toElement(e as Transaction));
  Iterable<Transaction> where(bool Function(Transaction element) test) => children.where(test);

  List<AccountBalance> issueChangesInBalance(AccountBalance balance) {
    int previousSum = balance.value;
    return children.map((e) {
      previousSum += e.amount;
      return balance.changeValueAtDate(previousSum, e.transactionAt.value);
    }).toList();
  }

  Transactions changeTransactionTitle(Transaction target, String newTitle) => Transactions(children
      .map((transaction) =>
          transaction == target ? transaction.copyWith.title(value: newTitle).copyWith(isCalced: true) : transaction)
      .toList());
  Transactions changeTransactionAmount(Transaction target, int newAmount) => Transactions(children
      .map((transaction) =>
          transaction == target ? transaction.copyWith(amount: newAmount, isCalced: true) : transaction)
      .toList());
}
