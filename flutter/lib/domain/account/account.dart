import 'package:flutter/foundation.dart';
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
  const Account._();
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
  factory Account.restore(String id, String name, int balanceValue, Transactions transactions, UserId ownerId) =>
      Account(
          id: AccountId(id),
          name: AccountName(name),
          balance: AccountBalance(balanceValue, date: DateTime.now()),
          transactions:
              Transactions(transactions.where((e) => e.transactionAt.value.isBefore(DateTime.now())).toList()),
          ownerId: ownerId);

  Transaction getTransaction(String targetId) =>
      transactions.children.firstWhere((element) => element.id.value == targetId);
  bool isOwner(UserId userId) => userId == ownerId;
  AccountBalance issueBalanceNow() => transactions.issueChangesInBalance(balance).last.changeDateNow();
  List<MapEntry<DateTime, AccountBalance>> issueChangesInBalance() =>
      transactions.issueChangesInBalance(balance).map((e) => MapEntry(e.date, e)).toList();
  List<MapEntry<DateTime, AccountBalance>> issueChangesInBalanceSchedule(Transactions scheduledTransactions) =>
      scheduledTransactions.issueChangesInBalance(balance).map((e) => MapEntry(e.date, e)).toList();

  Account addTransactionHistory(DateTime date, DateTime baseDate) {
    if (date.isAfter(baseDate)) {
      throw Exception('未来の日付は指定できません。');
    } else {
      return copyWith.transactions(children: [...transactions.children, Transaction.calced(accountId: id, date: date)]);
    }
  }

  Account changeName(String newName) => copyWith.name(value: newName);
  Account changeBalance(int newBalance) => copyWith(balance: balance.changeValue(newBalance));
  Account changeTransactionHistory(String targetId, bool calcBalance, {String? newTitle, int? newAmount}) {
    final targetTransaction = getTransaction(targetId);
    final updatedTransactions = newTitle != null && newAmount != null
        ? transactions
            .changeTransactionTitle(targetTransaction, newTitle)
            .changeTransactionAmount(targetTransaction, newAmount)
        : newTitle != null
            ? transactions.changeTransactionTitle(targetTransaction, newTitle)
            : newAmount != null
                ? transactions.changeTransactionAmount(targetTransaction, newAmount)
                : transactions;
    return copyWith(
        transactions: updatedTransactions,
        balance: calcBalance
            ? balance.changeValueByCalc(newAmount != null ? newAmount - targetTransaction.amount : 0)
            : balance);
  }
}
