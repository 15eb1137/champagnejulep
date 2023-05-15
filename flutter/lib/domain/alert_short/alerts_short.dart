import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account_id.dart';
import '../changes_in_balance/changes_in_balance.dart';
import 'alert_short.dart';

part 'alerts_short.freezed.dart';

@freezed
class AlertsShort with _$AlertsShort {
  const factory AlertsShort(List<AlertShort> children) = _AlertsShort;
  factory AlertsShort.issue(AccountId accountId, ChangesInBalance changesInBalance, int threshold) =>
      AlertsShort(changesInBalance
          .where((changeInBalance) => changeInBalance.scheduledBalance.value < threshold)
          .map((changeInBalance) => AlertShort.create(accountId, changeInBalance, threshold))
          .toList());
}
