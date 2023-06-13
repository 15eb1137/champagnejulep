import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_id.dart';
import 'account_id.dart';
import 'account_name.dart';
import 'transactions/transaction.dart';
import 'transactions/transaction_id.dart';
import 'transactions/transactions.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account {
  const Account._();
  const factory Account(
      {@AccountIdConverter() required AccountId id,
      @AccountNameConverter() required AccountName name,
      @TransactionsConverter() required Transactions transactions,
      @UserIdConverter() required UserId ownerId}) = _Account;

  factory Account.create(UserId userId) => Account(
      id: AccountId.create(), name: AccountName.create(), transactions: Transactions([]), ownerId: userId);
  factory Account.restore(String id, String name, int balanceValue, Transactions transactions, UserId ownerId) =>
      Account(
          id: AccountId(id),
          name: AccountName(name),
          transactions:
              Transactions(transactions.where((e) => e.transactionAt.value.isBefore(DateTime.now())).toList()),
          ownerId: ownerId);
  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  // Transaction getTransaction(String targetId) =>
  //     transactions.children.firstWhere((element) => element.id.value == targetId);
  // bool isOwner(UserId userId) => userId == ownerId;
  // Account changeName(String newName) => copyWith.name(value: newName);
  List<String> infoTransactions() => transactions.children.map((transaction) => transaction.info).toList();

  Account record(Transaction newTransaction) =>
      copyWith.transactions(children: [...transactions.children, newTransaction]);

  Account recordAll(List<Transaction> newTransactions) =>
      copyWith.transactions(children: [...transactions.children, ...newTransactions]);

  Account rewriteTransaction(TransactionId targetId, Transaction newTransaction) => copyWith.transactions(
      children: transactions.children
          .map((transaction) => transaction.id == targetId ? newTransaction : transaction)
          .toList());
  Account cancelTransaction(TransactionId targetId) =>
      copyWith.transactions(children: transactions.where((transaction) => transaction.id != targetId).toList());

  int simulateLatest() => transactions.simulate();
  int simulateAt(DateTime at) => Transactions(transactions.where((transaction) {
        final transactionAt = transaction.transactionAt.value;
        return transactionAt.isBefore(at) || transactionAt.isAtSameMomentAs(at);
      }).toList())
          .simulate();

  List<String> alert({required DateTime from}) {
      for (int i = 0; i < transactions.length; i++) {
        final slicedTransactions = Transactions(transactions.children.take(i).toList());
        final balance = slicedTransactions.simulate();
        if (balance < 0) {
          return ['${transactions.children[i].transactionAt.value}において、残高がマイナスになりました。'];
      }
    }
    // final transactions = Transactions(transactions.where((transaction) {
    //   final transactionAt = transaction.transactionAt.value;
    //   return transactionAt.isAtSameMomentAs(from) || transactionAt.isAfter(from);
    // }).toList());
    return [];
  }
}
