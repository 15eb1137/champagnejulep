import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account.dart';
import '../transactions/transactions.dart';
import 'change_in_balance.dart';

part 'changes_in_balance.freezed.dart';

@freezed
class ChangesInBalance with _$ChangesInBalance {
  const ChangesInBalance._();

  const factory ChangesInBalance(List<ChangeInBalance> children) = _ChangesInBalance;
  factory ChangesInBalance.issue(Account account, Transactions transactions) {
    final List<ChangeInBalance> changesInBalance = [];
    transactions.forEach((e) {
      final index = e.key;
      final targets = Transactions(transactions.children.sublist(0, index + 1));
      changesInBalance.add(ChangeInBalance.calc(account.balance, targets));
    });
    return ChangesInBalance(changesInBalance);
  }

  Iterable<ChangeInBalance> map<ChangeInBalance>(ChangeInBalance Function(ChangeInBalance e) toElement) =>
      children.map<ChangeInBalance>((e) => toElement(e as ChangeInBalance));

  Iterable<ChangeInBalance> where(bool Function(ChangeInBalance) test) => children.where(test);
}
