import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account_balance.dart';
import '../transactions/transactions.dart';

part 'change_in_balance.freezed.dart';

@freezed
class ChangeInBalance with _$ChangeInBalance {
  const ChangeInBalance._();

  const factory ChangeInBalance({
    required DateTime date,
    required AccountBalance scheduledBalance,
  }) = _ChangeInBalance;

  factory ChangeInBalance.calc(AccountBalance accountBalance, Transactions transactions) {
    final scheduledBalance = accountBalance.updateValueAtNow(
        transactions.children.fold(accountBalance.value, (previousValue, element) => previousValue + element.amount));
    return ChangeInBalance(date: scheduledBalance.updatedAt, scheduledBalance: scheduledBalance);
  }
}
