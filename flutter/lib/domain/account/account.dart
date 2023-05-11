import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user_id.dart';
import 'account_balance.dart';
import 'account_id.dart';
import 'account_name.dart';
import 'account_transactions.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const Account._();

  factory Account(
      {required AccountId id,
      required AccountName name,
      required AccountBalance balance,
      required List<AccountTransactions> transactions,
      required UserId ownerId}) = _Account;

  factory Account.create(String userId) => Account(
      id: AccountId.create(),
      name: AccountName.create(),
      balance: AccountBalance.create(),
      transactions: [],
      ownerId: UserId(userId));

  String get accountName => name.value;
  int get accountBalance => balance.value;
  List<Map<String, dynamic>> get accountTransactions => transactions
      .map((e) => {'id': e.id, 'transactionAt': e.transactionAt, 'title': e.title, 'amount': e.amount})
      .toList();

  bool isOwner(UserId userId) => userId == ownerId;
  Account updateName(String newName) => copyWith.name(value: newName);
  Account updateBalance(int newBalance) => copyWith(balance: balance.updateValueAtNow(newBalance));
  Account addTransaction() => copyWith(transactions: [...transactions, AccountTransactions.create()]);
  Account updateTransaction(String targetId, bool calcBalance, {String? newTitle, int? newAmount}) => copyWith(
      transactions: transactions
          .map((transaction) => transaction.id.value != targetId
              ? transaction
              : transaction.copyWith(title: newTitle ?? transaction.title, amount: newAmount ?? transaction.amount))
          .toList(),
      balance: calcBalance
          ? balance.updateValuePast(balance.value +
              (newAmount ?? 0) -
              transactions.firstWhere((element) => element.id.value != targetId).amount)
          : balance);
}
