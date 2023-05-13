import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account.dart';
import '../transactions_scheduled/transactions_scheduled.dart';
import 'change_in_balance.dart';

part 'changes_in_balance.freezed.dart';

@freezed
class ChangesInBalance with _$ChangesInBalance {
  const ChangesInBalance._();

  const factory ChangesInBalance(List<ChangeInBalance> changesInBalance) = _ChangesInBalance;
  factory ChangesInBalance.issue(Account account, TransactionsScheduled transactionsScheduled) {
    final changeInBalance = transactionsScheduled.map((e) {
      final index = e.key;
      final TransactionsScheduled targets =
          TransactionsScheduled(transactionsScheduled.transactionScheduled.sublist(0, index + 1));
      return ChangeInBalance.calc(account.balance, targets);
    }).toList();
    return ChangesInBalance(changeInBalance);
  }
}
