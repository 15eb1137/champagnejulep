import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_id.dart';
import 'account_id.dart';
import 'account_name.dart';
import 'transactions/transaction.dart';
import 'transactions/transaction_id.dart';
import 'transactions/transactions.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account(
      {required AccountId id,
      required AccountName name,
      required Transactions transactions,
      required UserId ownerId}) = _Account;

  factory Account.create(String userId) => Account(
      id: AccountId.create(),
      name: AccountName.create(),
      transactions: Transactions([]),
      ownerId: UserId(userId));
  factory Account.restore(String id, String name, int balanceValue, Transactions transactions, UserId ownerId) =>
      Account(
          id: AccountId(id),
          name: AccountName(name),
          transactions:
              Transactions(transactions.where((e) => e.transactionAt.value.isBefore(DateTime.now())).toList()),
          ownerId: ownerId);

  // Transaction getTransaction(String targetId) =>
  //     transactions.children.firstWhere((element) => element.id.value == targetId);
  // bool isOwner(UserId userId) => userId == ownerId;
  // Account changeName(String newName) => copyWith.name(value: newName);

  Account record(Transaction newTransaction) =>
      copyWith.transactions(children: [...transactions.children, newTransaction]);

  Account recordAll(List<Transaction> newTransactions) =>
      copyWith.transactions(children: [...transactions.children, ...newTransactions]);

  Account rewriteTransaction(TransactionId targetId, Transaction newTransaction) => copyWith.transactions(
      children: transactions.children
          .map((transaction) => transaction.id == targetId ? newTransaction : transaction)
          .toList());
  Account cancelTransaction(TransactionId targetId) => copyWith.transactions(
      children: transactions.children.where((transaction) => transaction.id != targetId).toList());

  int simulateLatest() => transactions.simulate();
  int simulateAt(DateTime at) => Transactions(transactions.where((transaction) {
        final transactionAt = transaction.transactionAt.value;
        return transactionAt.isBefore(at) || transactionAt.isAtSameMomentAs(at);
      }).toList())
          .simulate();
}
