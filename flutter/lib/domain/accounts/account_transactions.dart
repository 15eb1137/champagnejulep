import 'package:freezed_annotation/freezed_annotation.dart';

import 'account_transactions_id.dart';

part 'account_transactions.freezed.dart';

@freezed
class AccountTransactions with _$AccountTransactions {
  const factory AccountTransactions(
      {required AccountTransactionsId id,
      required DateTime transactionAt,
      required String title,
      required int amount}) = _AccountTransactions;

  factory AccountTransactions.create() => AccountTransactions(
      id: AccountTransactionsId.create(),
      transactionAt: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
      title: '新しい入出金履歴',
      amount: 0);

  AccountTransactions updateTitle(String title) => copyWith(title: title);
  AccountTransactions updateAmount(int amount) => copyWith(amount: amount);
}
