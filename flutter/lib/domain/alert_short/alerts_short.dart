import 'package:freezed_annotation/freezed_annotation.dart';

import '../accounts/account_balance.dart';
import '../accounts/account_id.dart';
import 'alert_short.dart';

part 'alerts_short.freezed.dart';

@freezed
class AlertsShort with _$AlertsShort {
  const factory AlertsShort(List<AlertShort> children) = _AlertsShort;
  factory AlertsShort.issue(AccountId accountId, Map<DateTime, AccountBalance> changesInBalance, int threshold) {
    final Map<DateTime, AccountBalance> removed = changesInBalance
      ..removeWhere((_, scheduledBalance) => scheduledBalance.value >= threshold);
    final alerts = <AlertShort>[];
    for (final entry in removed.entries) {
      alerts.add(AlertShort.create(accountId, entry, threshold));
    }
    return AlertsShort(alerts);
  }
}
