import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account_balance.dart';
import '../transactions_scheduled/transactions_scheduled.dart';

part 'change_in_balance.freezed.dart';

@freezed
class ChangeInBalance with _$ChangeInBalance {
  const ChangeInBalance._();

  const factory ChangeInBalance({
    required DateTime date,
    required AccountBalance scheduledBalance,
  }) = _ChangeInBalance;

  factory ChangeInBalance.calc(AccountBalance accountBalance, TransactionsScheduled transactionsScheduled) {
    final scheduledBalance = accountBalance.updateValueAtNow(transactionsScheduled.transactionScheduled
        .fold(accountBalance.value, (previousValue, element) => previousValue + element.value));
    return ChangeInBalance(date: scheduledBalance.updatedAt, scheduledBalance: scheduledBalance);
  }
}
