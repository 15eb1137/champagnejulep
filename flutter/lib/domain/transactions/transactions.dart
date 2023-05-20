import 'package:freezed_annotation/freezed_annotation.dart';

import '../account/account_balance.dart';
import 'transaction.dart';

part 'transactions.freezed.dart';

@freezed
class Transactions with _$Transactions {
  factory Transactions(List<Transaction> children) = _Transactions;

  Iterable<Transaction> map<Transaction>(Transaction Function(Transaction e) toElement) =>
      children.map<Transaction>((e) => toElement(e as Transaction));

  List<AccountBalance> issueChangesInBalance(AccountBalance balance) {
    int previousSum = balance.value;
    return children.map((e) {
      previousSum += e.amount;
      return balance.updateValueAtNow(previousSum); //TODO: not now
    }).toList();
  }

  Transactions updateTransactionTitle(Transaction target, String newTitle) => Transactions(children
      .map((transaction) =>
          transaction == target ? transaction : transaction.copyWith.title(value: newTitle).copyWith(isCalced: true))
      .toList());
  Transactions updateTransactionAmount(Transaction target, int newAmount) => Transactions(children
      .map((transaction) =>
          transaction == target ? transaction : transaction.copyWith(amount: newAmount, isCalced: true))
      .toList());
}
