import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain_service.dart';
import '../transactions/transaction.dart';
import '../transactions/transactions.dart';
import '../user/user_id.dart';
import 'account_balance.dart';
import 'account_id.dart';
import 'account_name.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  Account._() {
    DomainService.saveAccount(this);
  }

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
  Account updateTransaction(String targetId, bool calcBalance, {String? newTitle, int? newAmount}) => copyWith
      .transactions(
          children: transactions.children
              .map((transaction) => transaction.id.value != targetId
                  ? transaction
                  : transaction.copyWith
                      .title(value: newTitle ?? transaction.title.value)
                      .copyWith(amount: newAmount ?? transaction.amount, isCalced: true))
              .toList())
      .copyWith(
          balance: calcBalance
              ? balance.updateValuePast(balance.value +
                  (newAmount ?? 0) -
                  transactions.children.firstWhere((element) => element.id.value != targetId).amount)
              : balance);

  Map<DateTime, AccountBalance> issueChangesInBalance(Account account, Transactions transactions) {
    final Map<DateTime, AccountBalance> changesInBalance = {};
    transactions.forEach((e) {
      final index = e.key;
      final targets = Transactions(transactions.children.sublist(0, index + 1));
      final scheduledBalance = account.balance.updateValueAtNow(
          targets.children.fold(account.balance.value, (previousValue, element) => previousValue + element.amount));
      changesInBalance.addAll({scheduledBalance.updatedAt: scheduledBalance});
    });
    return changesInBalance;
  }
}
