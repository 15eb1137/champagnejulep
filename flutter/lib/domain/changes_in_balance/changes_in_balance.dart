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
    final List<ChangeInBalance> changesInBalance = [];
    transactionsScheduled.forEach((e) {
      final index = e.key;
      final targets = TransactionsScheduled(transactionsScheduled.transactionScheduled.sublist(0, index + 1));
      changesInBalance.add(ChangeInBalance.calc(account.balance, targets));
    });
    return ChangesInBalance(changesInBalance);
  }

  Iterable<ChangeInBalance> map<ChangeInBalance>(ChangeInBalance Function(ChangeInBalance e) toElement) =>
      changesInBalance.map<ChangeInBalance>((e) => toElement(e as ChangeInBalance));
  
  Iterable<ChangeInBalance> where(bool Function(ChangeInBalance) test) => changesInBalance.where(test);
}
