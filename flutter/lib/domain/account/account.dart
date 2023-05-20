import 'package:freezed_annotation/freezed_annotation.dart';

import '../transactions/transaction.dart';
import '../transactions/transactions.dart';
import '../user/user_id.dart';
import 'account_balance.dart';
import 'account_id.dart';
import 'account_name.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const factory Account(
      {required AccountId id,
      required AccountName name,
      required AccountBalance balance,
      required Transactions transactions,
      required UserId ownerId}) = _Account;

  factory Account.create(String userId) => Account(
      id: AccountId.create(),
      name: AccountName.create(),
      balance: AccountBalance.create(),
      transactions: Transactions([]),
      ownerId: UserId(userId));

  String get accountName => name.value;
  int get accountBalance => balance.value;
  List<Map<String, dynamic>> get accountTransactions => transactions.children
      .map((e) => {'id': e.id, 'transactionAt': e.transactionAt, 'title': e.title, 'amount': e.amount})
      .toList();

  bool isOwner(UserId userId) => userId == ownerId;
  Account updateName(String newName) => copyWith.name(value: newName);
  Account updateBalance(int newBalance) => copyWith(balance: balance.updateValueAtNow(newBalance));
  Account addTransaction() =>
      copyWith.transactions(children: [...transactions.children, Transaction.calced(accountId: id)]);
  Transaction getTransaction(String targetId) =>
      transactions.children.firstWhere((element) => element.id.value == targetId);
  Account updateTransactions(String targetId, bool calcBalance, {String? newTitle, int? newAmount}) {
    final targetTransaction = getTransaction(targetId);
    final updatedTransactions = newTitle != null && newAmount != null
        ? transactions
            .updateTransactionTitle(targetTransaction, newTitle)
            .updateTransactionAmount(targetTransaction, newAmount)
        : newTitle != null
            ? transactions.updateTransactionTitle(targetTransaction, newTitle)
            : newAmount != null
                ? transactions.updateTransactionAmount(targetTransaction, newAmount)
                : transactions;
    return copyWith(
        transactions: updatedTransactions,
        balance: calcBalance
            ? balance.updateValuePast(newAmount != null ? newAmount - targetTransaction.amount : 0)
            : balance);
  }
}
